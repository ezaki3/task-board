require 'rails_helper'

RSpec.describe Group, type: :model do
  it_behaves_like 'item behavior'

  describe 'scope' do
    describe 'readable' do
      let(:user) { create(:user) }
      let(:board) { create(:board, created_by: user.id) }
      let!(:group) { create(:group, board_id: board.id) }

      context 'user is member of parent board' do
        it 'returns groups' do
          expect(Group.readable(user.id).size).to eq 1
        end
      end

      context 'user is not member of parent board' do
        it 'returns no group' do
          Member.find_by(item_id: board.id).delete
          expect(Group.readable(user.id).size).to eq 0
        end
      end
    end
  end

  describe 'association dependent' do
    let(:group) { create(:group) }
    let!(:task) { create(:task, group_id: group.id) }

    context 'when has children' do
      it 'destroy them' do
        expect { group.destroy }.to change(Task, :count).by(-1)
      end
    end
  end
end
