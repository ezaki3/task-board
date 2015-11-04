require 'rails_helper'

RSpec.describe 'Api::V1::Users', type: :request do
  before do
    login
  end

  let(:headers) do
    {
      'Content-Type' => 'application/json',
      'Accept' => 'application/json'
    }
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
