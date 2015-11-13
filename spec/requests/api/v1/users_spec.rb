require 'rails_helper'

RSpec.describe 'Api::V1::Users', type: :request do
  before do
    login
  end

  # let(:headers) do
  #   {
  #     'Content-Type' => 'application/json',
  #     'Accept' => 'application/json'
  #   }
  # end

  describe 'GET /api/v1/users' do
    context 'has no query' do
      let!(:users) { create_list(:user, 2) }

      it 'returns all users', autodoc: true do
        is_expected.to eq 200
        res = JSON(response.body)
        expect(res.size).to eq 3 # logged-in user + created by factory
      end
    end

    context 'has query' do
      let!(:user1) { create(:user, nickname: 'fortune-guy') }
      let!(:user2) { create(:user, nickname: 'happy-cat') }

      before do
        params['nickname'] = 'ppy'
      end

      it 'returns matching users', autodoc: true do
        is_expected.to eq 200
        res = JSON(response.body)
        expect(res.size).to eq 1
        expect(res.first['nickname']).to eq 'happy-cat'
      end
    end
  end

  describe 'GET /api/v1/users/:id' do
    let(:user) { create(:user) }
    let(:id) { user.id }

    context 'with invalid id' do
      let(:id) { 0 }

      it 'returns no user' do
        expect { subject }.to raise_error(ActiveRecord::RecordNotFound)
      end
    end

    context 'with valid id' do
      it 'returns a user', autodoc: true do
        is_expected.to eq 200
        res = JSON(response.body)
        expect(res['id']).to eq id
        expect(res['nickname']).to eq user.nickname
      end
    end
  end

  describe 'GET /api/v1/users/current' do
    context 'when logged in' do
      it 'returns user info who logged in', autodoc: true do
        is_expected.to eq 200
        res = JSON(response.body)
        expect(res['provider']).to eq @user.provider
        expect(res['uid']).to eq @user.uid
        expect(res['nickname']).to eq @user.nickname
      end
    end

    context 'when not logged in' do
      it '' do
        get '/logout'
        get '/api/v1/users/current'
        expect(response.status).to eq 401
        expect(JSON(response.body)['error']).to eq 'unauthorized'
      end
    end
  end
end
