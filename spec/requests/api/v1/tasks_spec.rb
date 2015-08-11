require 'rails_helper'

# rspec-request_describer (https://github.com/r7kamura/rspec-request_describer)
# を使ったREST APIテストの試みとして

RSpec.describe 'Api::V1::Tasks', type: :request do
  # describeで記述されている文字列の内容が解析されて、
  # subject { get '/tasks/#{id}' } というコードと同等の内容が自動的に定義されます
  describe 'GET /api/v1/tasks/:id' do
    let(:task) { FactoryGirl.create(:task) }
    let(:id) { task.id }

    context 'with invalid id' do
      let(:id) { 0 }
      # rspec-railsではリクエストを送るメソッドがstatus codeを返すので、
      # (shouldのレシーバを省略することで) subjectの実行結果を呼び出してテストしています
      it {
        pending 'TODO: Fix error handling on Super-Controller when ActiveRecord::RecordNotFound occurs'
        is_expected.to eq 404
      }
    end

    # 最後に実行したリクエストに対するレスポンスが response から参照できるので、
    # subjectを評価したあと、レスポンスボディの内容をテストしています
    context 'with valid id' do
      it 'returns a task', autodoc: true do
        is_expected.to eq 200
        res = JSON(response.body)
        expect(res['id']).to eq id
        expect(res['subject']).to eq task['subject']
        expect(res['group']['id']).to eq task.group['id']
      end
    end
  end

  describe 'POST /api/v1/tasks' do
    # let(:headers) do
    #   {'Content-Type' => 'application/json'}
    # end

    let(:params) do
      { task: FactoryGirl.attributes_for(:task) }
    end

    context 'with valid params' do
      it 'adds a task', autodoc: true do
        expect {
          is_expected.to eq 201
        }.to change(Task, :count).by(1)
        res = JSON(response.body)
        expect(res['subject']).to eq params[:task][:subject]
        expect(res['body']).to eq params[:task][:body]
        expect(res['updated_at']).to eq res['created_at']
        expect(response.header['location']).to eq '/api/v1/tasks/%d' % res['id']
      end
    end

    context 'with invalid params' do
      let(:params) do
        { task: { subject: '' } }
      end

      it 'not adds a task' do
        expect {
          is_expected.to eq 422
        }.not_to change(Task, :count)
      end
    end
  end

  describe 'PATCH /api/v1/tasks/:id' do
    let!(:task) { FactoryGirl.create(:task) }
    let(:id) { task.id }
    let(:params) do
      {
        task: FactoryGirl.attributes_for(
          :task, subject: 'changed subject', body: 'changed body'
        )
      }
    end

    context 'with valid params' do
      it 'updates a task', autodoc: true do
        expect {
          is_expected.to eq 200
        }.not_to change(Task, :count)
        res = JSON(response.body)
        expect(res['id']).to eq task.id
        expect(res['subject']).to eq params[:task][:subject]
        expect(res['body']).to eq params[:task][:body]
        expect(res['updated_at']).not_to eq res['created_at']
        expect(response.header['location']).to eq '/api/v1/tasks/%d' % id
      end
    end

    context 'with invalid params' do
      let(:params) do
        { task: { subject: '' } }
      end

      it 'not updates a task' do
        expect {
          is_expected.to eq 422
        }.not_to change(Task, :count)
      end
    end
  end

  describe 'DELETE /api/v1/tasks/:id' do
    let!(:task) { FactoryGirl.create(:task) }
    let(:id) { task.id }

    context 'with valid id', autodoc: true do
      it 'deletes a task' do
        expect {
          is_expected.to eq 204
        }.to change(Task, :count).by(-1)
      end
    end

    context 'with invalid id' do
      let(:id) { 0 }
      it {
        pending 'TODO: Fix error handling on Super-Controller when ActiveRecord::RecordNotFound occurs'
        is_expected.to eq 404
      }
    end
  end

  describe 'GET /api/v1/tasks' do
    let!(:tasks) { FactoryGirl.create_list(:task, 2) }

    it 'returns tasks', autodoc: true do
      is_expected.to eq 200
      res = JSON(response.body)
      expect(res.size).to eq tasks.size
      expect(res.first['id']).to eq tasks.first['id']
      expect(res.first['group']['id']).to eq tasks.first.group['id']
      expect(res.second['id']).to eq tasks.second['id']
    end
  end
end
