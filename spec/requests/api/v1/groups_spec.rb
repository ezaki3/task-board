require 'rails_helper'

RSpec.describe 'Api::V1::Groups', type: :request do
  before :all do
    login
  end

  after :all do
    truncate_users
  end

  describe 'GET /api/v1/groups/:id' do
    let(:group) { create(:group) }
    let(:id) { group.id }

    context 'with valid id' do
      it 'retruns a group', autodoc: true do
        is_expected.to eq 200
        res = JSON(response.body)
        expect(res['id']).to eq id
        expect(res['subject']).to eq group['subject']
        expect(res['priority']).to eq group['priority']
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

  describe 'POST /api/v1/boards/:board_id/groups' do
    let(:headers) do
      {
        'Content-Type' => 'application/json',
        'Accept' => 'application/json'
      }
    end

    let!(:user) { create(:user) }
    let(:params) {
      {
        group: attributes_for(
          :group,
          board_id: board_id,
          members_attributes: [attributes_for(:member, item_id: nil, user_id: user.id)]
        )
      }
    }
    let(:board) { create(:board) }
    let(:board_id) { board.id }

    context 'with valid params' do
      it 'adds a group', autodoc: true do
        expect { is_expected.to eq 201 }.to change(Group, :count).by(1)
        res = JSON(response.body)
        expect(res['subject']).to eq params[:group][:subject]
        expect(res['priority']).to eq params[:group][:priority]
        expect(res['updated_at']).to eq res['created_at']
        # expect(res['members'][0]['id']).to eq @user.id
        expect(res['members'].size).to eq 2
        expect(response.header['location']).to eq '/api/v1/groups/%d' % res['id']
      end
    end

    context 'with invalid params' do
      let(:params) { { group: { subject: '' } } }

      it 'not adds a group' do
        expect {
          is_expected.to eq 422
        }.not_to change(Group, :count)
      end
    end
  end

  describe 'POST /api/v1/boards/:board_id/groups/dryrun' do
    let(:headers) do
      {
        'Content-Type' => 'application/json',
        'Accept' => 'application/json'
      }
    end

    let(:params) { { group: attributes_for(:group, board_id: board_id) } }
    let(:board) { create(:board) }
    let(:board_id) { board.id }

    context 'with valid params' do
      it 'returns OK and not creates' do
        expect { is_expected.to eq 200 }.not_to change(Group, :count)
        res = JSON(response.body)
        expect(res['subject']).to eq params[:group][:subject]
        expect(res['priority']).to eq params[:group][:priority]
        expect(res['updated_at']).to eq res['created_at']
        expect(response.header['location']).to be_nil
      end
    end

    context 'with invalid params' do
      let(:params) { { group: { subject: '' } } }

      it 'returns NG and not creates', autodoc: true do
        expect { is_expected.to eq 422 }.not_to change(Group, :count)
        res = JSON(response.body)
        expect(res['subject'].first).to eq "can't be blank"
      end
    end
  end

  describe 'PATCH /api/v1/groups/:id' do
    let(:headers) do
      {
        'Content-Type' => 'application/json',
        'Accept' => 'application/json'
      }
    end

    let!(:group) { create(:group, user_id: @user.id + 1) }
    let(:id) { group.id }
    let(:params) do
      {
        group: attributes_for(
          :group, subject: 'changed subject'
        )
      }
    end

    context 'with valid params' do
      it 'updates a group', autodoc: true do
        expect {
          is_expected.to eq 200
        }.not_to change(Group, :count)
        res = JSON(response.body)
        expect(res['id']).to eq group.id
        expect(res['subject']).to eq params[:group][:subject]
        expect(res['priority']).to eq params[:group][:priority]
        expect(res['updated_at']).not_to eq res['created_at']
        expect(response.header['location']).to eq '/api/v1/groups/%d' % id
      end
    end

    context 'with invalid params' do
      let(:params) { { group: { subject: '' } } }

      it 'not updates a group' do
        expect {
          is_expected.to eq 422
        }.not_to change(Group, :count)
      end
    end
  end

  describe 'PATCH /api/v1/groups/:id/dryrun' do
    let(:headers) do
      {
        'Content-Type' => 'application/json',
        'Accept' => 'application/json'
      }
    end

    let!(:group) { create(:group) }
    let(:id) { group.id }
    let(:params) do
      {
        group: attributes_for(
          :group, subject: 'changed subject'
        )
      }
    end

    context 'with valid params' do
      it 'returns OK and not updates' do
        expect { is_expected.to eq 200 }.not_to change(Group, :count)
        res = JSON(response.body)
        expect(res['id']).to eq group.id
        expect(res['subject']).to eq params[:group][:subject]
        expect(res['priority']).to eq params[:group][:priority]
        expect(res['updated_at']).to eq res['created_at']
        expect(response.header['location']).to eq '/api/v1/groups/%d' % id
      end
    end

    context 'with invalid params' do
      let(:params) { { group: { subject: '' } } }

      it 'returns NG and not updates', autodoc: true do
        expect { is_expected.to eq 422 }.not_to change(Group, :count)
        res = JSON(response.body)
        expect(res['subject'].first).to eq "can't be blank"
      end
    end
  end

  describe 'DELETE /api/v1/groups/:id' do
    let!(:group) { create(:group) }
    let(:id) { group.id }

    context 'with valid id' do
      it 'deletes a group', autodoc: true do
        expect {
          is_expected.to eq 204
        }.to change(Group, :count).by(-1)
      end
    end

    context 'with invalid id' do
      let(:id) { 0 }
      it {
        expect { subject }.to raise_error(ActiveRecord::RecordNotFound)
      }
    end
  end

  describe 'GET /api/v1/boards/:board_id/groups' do
    let!(:groups) { create_list(:group, 2, board_id: board_id) }
    let(:board) { create(:board) }
    let(:board_id) { board.id }

    context 'with valid board id' do
      it 'returns groups', autodoc: true do
        is_expected.to eq 200
        res = JSON(response.body)
        expect(res.size).to eq groups.size
        expect(res.first['id']).to eq groups.first['id']
        expect(res.first['subject']).to eq groups.first['subject']
        expect(res.first['priority']).to eq groups.first['priority']
        expect(res.last['id']).to eq groups.last['id']
      end
    end

    context 'with invalid board id' do
      let(:board_id) { 0 }

      it { expect { subject }.to raise_error(ActiveRecord::RecordNotFound) }
    end
  end
end
