require 'rails_helper'

RSpec.describe Task, type: :model do
  it_behaves_like 'item behavior'

  describe 'member association' do
    let!(:task) { create(:task, members: [create(:member)]) }

    context 'when add members' do
      it 'not duplicates' do
        old = task.members.size
        task.update(
          members: [
            Member.new(item_id: task.id, user_id: task.members.first.id, is_owner: true),
            Member.new(item_id: task.id, user_id: task.members.first.id + 1)
          ]
        )
        expect(task.members.size).to eq old + 1
        expect(task.members.first.user_id).not_to eq task.members.second.user_id
      end
    end

    context 'when parent has destroyed' do
      it 'destroys members belongs to' do
        Task.find(task.id).destroy
        expect(Member.find_by(item_id: task.id)).to be_nil
      end
    end
  end
end
