require 'rails_helper'

RSpec.describe Talkable do
  let(:test_class) {
    # Struct.new(:talkable) {
    Class.new(Api::V1::ApplicationController) {
      include Talkable
      define_method(:my_url) { 'http://example.com' }
    }
  }
  let(:talkable) { test_class.new }

  describe '#build_message' do
    let(:users) { create_list(:user, 3) }
    let(:group) { create(:group) }
    let(:task) { create(:task, parent_id: group.id) }
    let!(:members) {
      create(:member, item_id: task.id, user: users.first)
      create(:member, item_id: task.id, user: users.second)
    }

    context 'when creates' do
      it 'returns any message' do
        message = talkable.build_message(
          task,
          user_id: users.third.id,
          action: :created,
          members: [
            {item_id: task.id, user_id: users.first.id},
            {item_id: task.id, user_id: users.second.id}
          ]
        )
        expect(message).not_to be_falsy
        # message.split("\n").each { |m| p m }
      end
    end

    context 'when updates' do
      let(:new_group) { create(:group) }
      it 'returns any message' do
        task.update(
          attributes_for(:task)
        )
        message = talkable.build_message(
          task,
          user_id: users.third.id,
          action: :updated,
          members: [
            {user_id: users.first.id, release: true},
            {user_id: users.third.id}
          ]
        )
        expect(message).not_to be_falsy
        # message.split("\n").each { |m| p m }
      end
    end
  end
end
