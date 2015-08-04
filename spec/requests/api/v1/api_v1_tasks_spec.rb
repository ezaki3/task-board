require 'rails_helper'

RSpec.describe "Api::V1::Tasks", type: :request do
  describe "GET /api_v1_tasks" do
    it "works! (now write some real specs)" do
      get api_v1_tasks_path
      expect(response).to have_http_status(200)
    end
  end

  # describeで記述されている文字列の内容が解析されて、
  # subject { get "/tasks/#{id}" } というコードと同等の内容が自動的に定義されます
  describe "GET /api/v1/tasks/:id" do
    let(:id) { FactoryGirl.create(:task).id }

    context "with invalid id" do
      let(:id) { 0 }
      # rspec-railsではリクエストを送るメソッドがstatus codeを返すので、
      # (shouldのレシーバを省略することで) subjectの実行結果を呼び出してテストしています
      it { is_expected.to eq 404 }
    end

    # 最後に実行したリクエストに対するレスポンスが response から参照できるので、
    # subjectを評価したあと、レスポンスボディの内容をテストしています
    context "with valid id" do
      it "returns a task" do
        is_expected.to eq 200
        res = response.body
        puts res
        # expect(res).to ...
      end
    end
  end
end
