require 'rails_helper'

RSpec.describe Board, type: :model do
  it_behaves_like 'item behavior'

  describe 'parent_id' do
    let(:board) { create(:board) }

    it 'is allways zero' do
      expect(board.parent_id).to eq 0
    end
  end

  describe 'scope' do
    describe 'readable' do
      let(:user) { create(:user) }
      let!(:board) { create(:board, created_by: user.id) }

      context 'user is member' do
        it 'returns boards' do
          expect(Board.readable(user.id).size).to eq 1
        end
      end

      context 'user is not member' do
        it 'returns no board' do
          Member.find_by(item_id: board.id).delete
          expect(Board.readable(user.id).size).to eq 0
        end
      end
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

  describe '#create_owner' do
    let(:user) { create(:user) }
    let!(:board) { create(:board, created_by: user.id) }
    context 'after_create' do
      it 'makes first member as an owner' do
        expect(Member.where(item_id: board.id).size).to eq 1
        member = Member.find_by(item_id: board.id)
        expect(member.user_id).to eq user.id
      end
    end
  end
end
