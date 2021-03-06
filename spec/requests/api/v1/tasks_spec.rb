require 'rails_helper'

# rspec-request_describer (https://github.com/r7kamura/rspec-request_describer)
# を使ったREST APIテストの試みとして

RSpec.describe 'Api::V1::Tasks', type: :request do
  before :all do
    login
  end

  after :all do
    truncate_users
  end

  # describeで記述されている文字列の内容が解析されて、
  # subject { get '/tasks/#{id}' } というコードと同等の内容が自動的に定義されます
  describe 'GET /api/v1/tasks/:id' do
    let(:board) { create(:board, created_by: user.id) }
    let(:group) { create(:group, board_id: board.id) }
    let(:task) { create(:task, group_id: group.id) }
    let(:id) { task.id }

    context 'user is not board member' do
      let(:user) { create(:user) }

      it 'returns 404' do
        is_expected.to eq 404
      end
    end

    context 'user is board member' do
      let(:user) { @user }

      context 'with invalid id' do
        let(:id) { 0 }
        # rspec-railsではリクエストを送るメソッドがstatus codeを返すので、
        # (shouldのレシーバを省略することで) subjectの実行結果を呼び出してテストしています
        it {
          # is_expected.to eq 404 # This is on like `production` environment
          expect { subject }.to raise_error(ActiveRecord::RecordNotFound)
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
          expect(res['priority']).to eq task['priority']
          expect(res['members']).to be_truthy
        end
      end
    end
  end

  describe 'POST /api/v1/groups/:group_id/tasks' do
    let(:headers) do
      {
        'Content-Type' => 'application/json',
        'Accept' => 'application/json'
      }
    end

    let!(:user) { create(:user) }
    let(:params) {
      {
        task: attributes_for(
          :task,
          group_id: group_id,
          members_attributes: [
            attributes_for(:member, item_id: nil, user_id: @user.id),
            attributes_for(:member, item_id: nil, user_id: user.id)
          ]
        )
      }
    }

    let(:board) { create(:board, created_by: board_user.id) }
    let(:group) { create(:group, board_id: board.id, created_by: board_user.id) }
    let(:group_id) { group.id }

    context 'user is not board member' do
      let(:board_user) { create(:user) }

      it 'returns 404' do
        is_expected.to eq 404
      end
    end

    context 'user is board member' do
      let(:board_user) { @user }

      context 'with valid params' do
        it 'adds a task', autodoc: true do
          expect {
            is_expected.to eq 201
          }.to change(Task, :count).by(1)
          res = JSON(response.body)
          expect(res['subject']).to eq params[:task][:subject]
          expect(res['body']).to eq params[:task][:body]
          expect(res['priority']).to eq params[:task][:priority]
          expect(res['updated_at']).to eq res['created_at']
          # expect(res['members'][0]['id']).to eq @user.id
          expect(res['members'].size).to eq 2
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
  end

  describe 'POST /api/v1/groups/:group_id/tasks/dryrun' do
    let(:headers) do
      {
        'Content-Type' => 'application/json',
        'Accept' => 'application/json'
      }
    end

    let(:params) { { task: attributes_for(:task, group_id: group_id) } }
    let(:board) { create(:board, created_by: board_user.id) }
    let(:group) { create(:group, board_id: board.id, created_by: board_user.id) }
    let(:group_id) { group.id }

    context 'user is not board member' do
      let(:board_user) { create(:user) }

      it 'returns 404' do
        is_expected.to eq 404
      end
    end

    context 'user is board member' do
      let(:board_user) { @user }

      context 'with valid params' do
        it 'returns OK and not creates' do
          expect { is_expected.to eq 200 }.not_to change(Task, :count)
          res = JSON(response.body)
          expect(res['subject']).to eq params[:task][:subject]
          expect(res['body']).to eq params[:task][:body]
          expect(res['priority']).to eq params[:task][:priority]
          expect(res['updated_at']).to eq res['created_at']
          expect(response.header['location']).to be_nil
        end
      end

      context 'with invalid params' do
        let(:params) { { task: { subject: '' } } }

        it 'returns NG and not creates', autodoc: true do
          expect { is_expected.to eq 422 }.not_to change(Task, :count)
          res = JSON(response.body)
          expect(res['subject'].first).to eq "can't be blank"
        end
      end
    end
  end

  describe 'PATCH /api/v1/tasks/:id' do
    let(:headers) do
      {
        'Content-Type' => 'application/json',
        'Accept' => 'application/json'
      }
    end

    let(:board) { create(:board, created_by: board_user.id) }
    let(:group) { create(:group, board_id: board.id) }
    let!(:task) { create(:task, group_id: group.id) }
    let(:id) { task.id }
    let(:params) do
      {
        task: attributes_for(
          :task, subject: 'changed subject', body: 'changed body'
        )
      }
    end

    context 'user is not member' do
      let(:board_user) { create(:user) }

      it 'retruns 404' do
        is_expected.to eq 404
      end
    end

    context 'user is member' do
      let(:board_user) { @user }

      context 'with valid params' do
        it 'updates a task', autodoc: true do
          expect {
            is_expected.to eq 200
          }.not_to change(Task, :count)
          res = JSON(response.body)
          expect(res['id']).to eq task.id
          expect(res['subject']).to eq params[:task][:subject]
          expect(res['body']).to eq params[:task][:body]
          expect(res['priority']).to eq params[:task][:priority]
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

      context 'with _destroy flag on member' do
        let(:user) { create(:user, id: @user.id + 1) }
        let!(:member) { create(:member, item_id: task.id, user_id: user.id) }
        let!(:params) do
          {
            task: {
              id: task.id,
              members_attributes: [
                { item_id: nil, user_id: @user.id },
                { item_id: nil, user_id: user.id, release: '1' }
              ]
            }
          }
        end

        it 'removes member' do
          expect { is_expected.to eq 200 }.to change(Member, :count).by(+ 1 - 1)
          expect(Member.where(item_id: task.id).count).to eq 1
          expect(Member.where(item_id: task.id).first.user_id).to eq @user.id
        end
      end
    end
  end

  describe 'PATCH /api/v1/tasks/:id/dryrun' do
    let(:headers) do
      {
        'Content-Type' => 'application/json',
        'Accept' => 'application/json'
      }
    end

    let(:board) { create(:board, created_by: board_user.id) }
    let(:group) { create(:group, board_id: board.id) }
    let!(:task) { create(:task, group_id: group.id) }
    let(:id) { task.id }
    let(:params) do
      {
        task: attributes_for(
          :task, subject: 'changed subject', body: 'changed body'
        )
      }
    end

    context 'user is not member' do
      let(:board_user) { create(:user) }

      it 'returns 404' do
        is_expected.to eq 404
      end
    end

    context 'user is member' do
      let(:board_user) { @user }

      context 'with valid params' do
        it 'returns OK and not updates' do
          expect { is_expected.to eq 200 }.not_to change(Task, :count)
          res = JSON(response.body)
          expect(res['id']).to eq task.id
          expect(res['subject']).to eq params[:task][:subject]
          expect(res['body']).to eq params[:task][:body]
          expect(res['priority']).to eq params[:task][:priority]
          expect(res['updated_at']).to eq res['created_at']
          expect(response.header['location']).to eq '/api/v1/tasks/%d' % id
        end
      end

      context 'with invalid params' do
        let(:params) { { task: { subject: '' } } }

        it 'returns NG and not updates', autodoc: true do
          expect { is_expected.to eq 422 }.not_to change(Task, :count)
          res = JSON(response.body)
          expect(res['subject'].first).to eq "can't be blank"
        end
      end
    end
  end

  describe 'DELETE /api/v1/tasks/:id' do
    let(:board) { create(:board, created_by: board_user.id) }
    let(:group) { create(:group, board_id: board.id) }
    let!(:task) { create(:task, group_id: group.id) }
    let(:id) { task.id }

    context 'user is not member' do
      let(:board_user) { create(:user) }

      it 'retruns 404' do
        is_expected.to eq 404
      end
    end

    context 'user is member' do
      let(:board_user) { @user }

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
          # is_expected.to eq 404 # This is on like `production` environment
          expect { subject }.to raise_error(ActiveRecord::RecordNotFound)
        }
      end
    end
  end

  describe 'GET /api/v1/groups/:group_id/tasks' do
    let!(:tasks) {
      create_list(
        :task, 2, group_id: group_id,
        members: [create(:member, user_id: @user.id, item_id: group.board.id)]
      )
    }
    let(:board) { create(:board, created_by: board_user.id) }
    let(:group) { create(:group, board_id: board.id, created_by: board_user.id) }
    let(:group_id) { group.id }

    context 'user is not member' do
      let(:board_user) { create(:user) }

      it 'retruns 404' do
        is_expected.to eq 200
      end
    end

    context 'user is member' do
      let(:board_user) { @user }

      context 'with valid group id' do
        it 'returns tasks', autodoc: true do
          is_expected.to eq 200
          res = JSON(response.body)
          expect(res.first['id']).to eq tasks.first['id']
          expect(res.last['id']).to eq tasks.last['id']
        end
      end

      context 'with invalid group id' do
        let(:group_id) { 0 }

        # it { expect { subject }.to raise_error(ActiveRecord::RecordNotFound) }
        it 'returns 404' do
          is_expected.to eq 404
        end
      end
    end
  end
end
