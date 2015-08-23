require 'rails_helper'

RSpec.describe 'Api::V1::Groups', type: :request do
  describe 'GET /api/v1/groups/:id' do
    let(:group) { FactoryGirl.create(:group) }
    let(:id) { group.id }

    context 'with valid id' do
      it 'retruns a group', autodoc: true do
        is_expected.to eq 200
        res = JSON(response.body)
        expect(res['id']).to eq id
        expect(res['subject']).to eq group['subject']
      end
    end

    context 'with invalid id' do
      let(:id) { 0 }
      it {
        expect { subject }.to raise_error(ActiveRecord::RecordNotFound)
      }
    end
  end

  describe 'POST /api/v1/groups' do
    let(:params) { { group: FactoryGirl.attributes_for(:group) } }

    context 'with valid params' do
      it 'adds a group', autodoc: true do
        expect { is_expected.to eq 201 }.to change(Group, :count).by(1)
        res = JSON(response.body)
        expect(res['subject']).to eq params[:group][:subject]
        expect(res['updated_at']).to eq res['created_at']
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

  describe 'PATCH /api/v1/groups/:id' do
    let!(:group) { FactoryGirl.create(:group) }
    let(:id) { group.id }
    let(:params) do
      {
        group: FactoryGirl.attributes_for(
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

  describe 'DELETE /api/v1/groups/:id' do
    let!(:group) { FactoryGirl.create(:group) }
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

  describe 'GET /api/v1/groups' do
    let!(:groups) { FactoryGirl.create_list(:group, 2) }

    it 'returns groups', autodoc: true do
      is_expected.to eq 200
      res = JSON(response.body)
      expect(res.size).to eq groups.size
      expect(res.first['id']).to eq groups.first['id']
      expect(res.second['id']).to eq groups.second['id']
    end
  end

  describe 'GET /api/v1/groups/:group_id/tasks' do
    let(:tasks) { FactoryGirl.create_list(:task, 2) }
    let(:group_id) { tasks.first.group_id }

    context 'with valid group id' do
      it 'returns tasks with thier group', autodoc: true do
        is_expected.to eq 200
        res = JSON(response.body)
        expect(res.first['id']).to eq tasks.first['id']
        expect(res.first['group']['id']).to eq tasks.first.group['id']
      end
    end

    context 'with invalid group id' do
      let(:group_id) { 0 }
      it {
        expect { subject }.to raise_error(ActiveRecord::RecordNotFound)
      }
    end
  end
end
