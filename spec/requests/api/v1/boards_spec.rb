require 'rails_helper'

RSpec.describe 'Api::V1::Boards', type: :request do
  before :all do
    login
  end

  after :all do
    truncate_users
  end

  describe 'GET /api/v1/boards/:id' do
    let(:board) { create(:board) }
    let(:id) { board.id }

    context 'with valid id' do
      it 'returns a board', autodoc: true do
        is_expected.to eq 200
        res = JSON(response.body)
        expect(res['id']).to eq id
        expect(res['subject']).to eq board['subject']
        expect(res['priority']).to eq board['priority']
        expect(res['members']).to be_truthy
      end
    end

    context 'with invalid id' do
      let(:id) { 0 }
      it {
        expect { subject }.to raise_error(ActiveRecord::RecordNotFound)
      }
    end
  end

  describe 'POST /api/v1/boards' do
    let(:headers) do
      {
        'Content-Type' => 'application/json',
        'Accept' => 'application/json'
      }
    end

    let!(:user) { create :user }
    let(:params) {
      {
        board: attributes_for(
          :board,
          members_attributes: members
          # attributes_for(:member, item_id: nil, user_id: @user.id),
          # attributes_for(:member, item_id: nil, user_id: user.id)
        )
      }
    }

    context 'with valid params' do
      context 'and members' do
        let(:members) {
          [
            attributes_for(:member, item_id: nil, user_id: @user.id),
            attributes_for(:member, item_id: nil, user_id: user.id)
          ]
        }
        it 'adds a new board', autodoc: true do
          expect { is_expected.to eq 201 }.to change(Board, :count).by(1)
          res = JSON(response.body)
          expect(res['subject']).to eq params[:board][:subject]
          expect(res['priority']).to eq params[:board][:priority]
          expect(res['updated_at']).to eq res['created_at']
          expect(res['members'][0]['id']).to eq @user.id
          expect(res['members'].size).to eq 2
          expect(response.header['location']).to eq '/api/v1/boards/%d' % res['id']
        end
      end

      context 'and no members' do
        let(:members) { nil }
        it 'adds a new board has default member' do
          expect { is_expected.to eq 201 }.to change(Board, :count).by(1)
          res = JSON(response.body)
          expect(res['members'].size).to eq 1
          expect(res['members'][0]['id']).to eq @user.id
        end
      end
    end

    context 'with invalid params' do
      let(:params) { { board: { subject: '' } } }

      it 'not adds a board' do
        expect {
          is_expected.to eq 422
        }.not_to change(Board, :count)
      end
    end
  end

  describe 'POST /api/v1/boards/dryrun' do
    let(:headers) do
      {
        'Content-Type' => 'application/json',
        'Accept' => 'application/json'
      }
    end

    let(:params) { { board: attributes_for(:board) } }

    context 'with valid params' do
      it 'returns OK and not creates' do
        expect { is_expected.to eq 200 }.not_to change(Board, :count)
        res = JSON(response.body)
        expect(res['subject']).to eq params[:board][:subject]
        expect(res['priority']).to eq params[:board][:priority]
        expect(res['updated_at']).to eq res['created_at']
        expect(response.header['location']).to be_nil
      end
    end

    context 'with invalid params' do
      let(:params) { { board: { subject: '' } } }

      it 'returns NG and not creates', autodoc: true do
        expect { is_expected.to eq 422 }.not_to change(Board, :count)
        res = JSON(response.body)
        expect(res['subject'].first).to eq "can't be blank"
      end
    end
  end

  describe 'PATCH /api/v1/boards/:id' do
    let(:headers) do
      {
        'Content-Type' => 'application/json',
        'Accept' => 'application/json'
      }
    end

    let(:user) { create(:user, id: @user.id + 1) }
    let!(:board) { create(:board, user_id: user.id) }
    let(:id) { board.id }
    let(:params) do
      {
        board: attributes_for(
          :board, subject: 'changed subject',
          members_attributes: [
            attributes_for(:member, item_id: nil, user_id: @user.id),
            attributes_for(:member, item_id: nil, user_id: user.id)
          ]
        )
      }
    end

    context 'with valid params' do
      it 'updates a board', autodoc: true do
        expect {
          is_expected.to eq 200
        }.not_to change(Board, :count)
        res = JSON(response.body)
        expect(res['id']).to eq board.id
        expect(res['subject']).to eq params[:board][:subject]
        expect(res['priority']).to eq params[:board][:priority]
        expect(res['updated_at']).not_to eq res['created_at']
        expect(res['members'].size).to eq 2
        expect(response.header['location']).to eq '/api/v1/boards/%d' %id
      end
    end

    context 'with invalid params' do
      let(:params) { { board: { subject: '' } } }

      it 'not updates a board' do
        expect {
          is_expected.to eq 422
        }.not_to change(Board, :count)
      end
    end

    context 'with _destroy flag on member' do
      let!(:params) do
        {
          board: {
            id: board.id,
            members_attributes: [
              { item_id: nil, user_id: @user.id },
              { item_id: nil, user_id: user.id, release: '1' }
            ]
          }
        }
      end

      it 'removes member' do
        expect { is_expected.to eq 200 }.to change(Member, :count).by(+ 1 - 1)
        expect(Member.count).to eq 1
        expect(Member.first.user_id).to eq @user.id
      end
    end
  end

  describe 'PATCH /api/v1/boards/:id/dryrun' do
    let(:headers) do
      {
        'Content-Type' => 'application/json',
        'Accept' => 'application/json'
      }
    end

    let!(:board) { create(:board) }
    let(:id) { board.id }
    let(:params) do
      {
        board: attributes_for(
          :board, subject: 'changed subject'
        )
      }
    end

    context 'with valid params' do
      it 'returns OK and not updates' do
        expect { is_expected.to eq 200 }.not_to change(Board, :count)
        res = JSON(response.body)
        expect(res['id']).to eq board.id
        expect(res['subject']).to eq params[:board][:subject]
        expect(res['priority']).to eq params[:board][:priority]
        expect(res['updated_at']).to eq res['created_at']
        expect(response.header['location']).to eq '/api/v1/boards/%d' % id
      end
    end

    context 'with invalid params' do
      let(:params) { { board: { subject: '' } } }

      it 'returns NG and not updates', autodoc: true do
        expect { is_expected.to eq 422 }.not_to change(Board, :count)
        res = JSON(response.body)
        expect(res['subject'].first).to eq "can't be blank"
      end
    end
  end

  describe 'DELETE /api/v1/boards/:id' do
    let!(:board) { create(:board) }
    let(:id) { board.id }

    context 'with valid id' do
      it 'deletes a board', autodoc: true do
        expect {
          is_expected.to eq 204
        }.to change(Board, :count).by(-1)
      end
    end

    context 'with invalid id' do
      let(:id) { 0 }
      it {
        expect { subject }.to raise_error(ActiveRecord::RecordNotFound)
      }
    end
  end

  describe 'GET /api/v1/boards' do
    let!(:boards) { create_list(:board, 2) }

    it 'returns boards', autodoc: true do
      is_expected.to eq 200
      res = JSON(response.body)
      expect(res.size).to eq boards.size
      expect(res.first['id']).to eq boards.first['id']
      expect(res.first['subject']).to eq boards.first['subject']
      expect(res.first['priority']).to eq boards.first['priority']
      expect(res.second['id']).to eq boards.second['id']
    end
  end
end
