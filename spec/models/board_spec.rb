require 'rails_helper'

RSpec.describe Board, type: :model do
  it_behaves_like 'card behavior'

  describe 'parent_id' do
    let(:board) { create(:board) }

    it 'is allways zero' do
      expect(board.parent_id).to eq 0
    end
  end

  describe 'association dependent' do
    let(:board) { create(:board) }
    let!(:group) { create(:group, board_id: board.id) }

    context 'when has children' do
      it 'destroys them' do
        expect { board.destroy }.to change(Group, :count).by(-1)
      end
    end

    context 'when has grandchildren' do
      let!(:task) { create(:task, group_id: group.id) }

      it 'destroys them' do
        expect {  board.destroy }.to change(Task, :count).by(-1)
      end
    end
  end
end
