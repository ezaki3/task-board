require 'rails_helper'

RSpec.describe 'Api::V1::Boards', type: :request do
  describe 'GET /api/v1/boards/:id' do
    let(:board) { FactoryGirl.create(:board) }
    let(:id) { board.id }

    context 'with valid id' do
      it 'returns a board', autodoc: true do
        is_expected.to eq 200
        res = JSON(response.body)
        expect(res['id']).to eq id
        expect(res['subject']).to eq board['subject']
        expect(res['priority']).to eq board['priority']
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
    let(:params) { { board: FactoryGirl.attributes_for(:board) } }

    context 'with valid params' do
      it 'adds a new board', autodoc: true do
        expect { is_expected.to eq 201 }.to change(Board, :count).by(1)
        res = JSON(response.body)
        expect(res['subject']).to eq params[:board][:subject]
        expect(res['priority']).to eq params[:board][:priority]
        expect(res['updated_at']).to eq res['created_at']
        expect(response.header['location']).to eq '/api/v1/boards/%d' % res['id']
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

  describe 'PATCH /api/v1/boards/:id' do
    let!(:board) { FactoryGirl.create(:board) }
    let(:id) { board.id }
    let(:params) do
      {
        board: FactoryGirl.attributes_for(
          :board, subject: 'changed subject'
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
  end

  describe 'DELETE /api/v1/boards/:id' do
    let!(:board) { FactoryGirl.create(:board) }
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
    let!(:boards) { FactoryGirl.create_list(:board, 2) }

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

  describe 'GET /api/v1/boards/:board_id/groups' do
    let(:groups) { FactoryGirl.create_list(:group, 2) }
    let(:board_id) { groups.first.board_id }

    context 'with valid board id' do
      it 'returns groups with thier board', autodoc: true do
        is_expected.to eq 200
        res = JSON(response.body)
        expect(res.first['id']).to eq groups.first['id']
        expect(res.first['board']['id']).to eq groups.first.board['id']
      end
    end

    context 'with invalid board id' do
      let(:board_id) { 0 }

      it{
        expect { subject }.to raise_error(ActiveRecord::RecordNotFound)
      }
    end
  end
end
