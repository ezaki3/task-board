require 'rails_helper'

RSpec.describe Board, type: :model do
  describe 'validation' do
    let(:board) { build(:board, subject: subject, priority: priority) }
    let(:subject) { 'happy board' }
    let(:priority) { 1 }

    context 'when valid' do
      it { expect(board).to respond_to(:subject) }
      it { expect(board).to respond_to(:priority) }

      it { expect(board).to be_valid }
    end

    context 'when subject is not present' do
      let(:subject) { '' }
      it { expect(board).not_to be_valid }
    end

    context 'when priority is not numeric' do
      let(:priority) { 'a' }
      it { expect(board).not_to be_valid }
    end

    context 'when priority is numeric but not integer' do
      let(:priority) { 10.1 }
      it { expect(board).not_to be_valid }
    end

    context 'when priority is not present' do
      let(:priority) { nil }
      it { expect(board).to be_valid }
    end
  end

  describe 'scope' do
    let(:boards) { create_list(:board, 3, priority: 2, updated_at: now) }
    let(:now) { Time.now }

    it 'returns boards order by priority asc, updated_at desc' do
      boards.first.updated_at = now - 1.day
      boards.first.save
      Board.where(id: [boards.first.id, boards.second.id]).update_all(priority: 1)
      actual = Board.prior
      expect(actual.first).to eq boards.second
      expect(actual.second).to eq boards.first
      expect(actual.third).to eq boards.third
    end
  end

  describe 'priority when created' do
    let!(:board) { create(:board, priority: 1001) }
    let(:creates) { attributes_for(:board, subject: 'a', priority: priority) }

    context 'if priority is not present' do
      let(:priority) { nil }

      it 'sets max existent value + 1' do
        Board.create(creates)
        expect(Board.find_by(subject: 'a').priority).to eq board.priority + 1
        expect(Board.find(board.id).priority).to eq board.priority
      end
    end

    context 'if priority is present' do
      context 'when same priority is not exist' do
        let(:priority) { 999 }

        it 'sets given value' do
          Board.create(creates)
          expect(Board.find_by(subject: 'a').priority).to eq priority
          expect(Board.find(board.id).priority).to eq board.priority
        end
      end

      context 'when same priority is exist' do
        let(:priority) { board.priority }

        it 'sets given value and increment existent value' do
          Board.create(creates)
          expect(Board.find_by(subject: 'a').priority).to eq priority
          expect(Board.find(board.id).priority).to eq board.priority + 1
        end
      end
    end
  end

  describe 'priority when updated' do
    before do
      create_list(:board, 2)
      Board.update_all(priority: 1001) # before_saveフィルタでincrementされないように#update_allする
      @boards = Board.all
    end

    context 'if priority is not present' do
      it 'sets max existent value + 1' do
        @boards.first.priority = nil
        @boards.first.save
        expect(Board.find(@boards.first.id).priority).to eq @boards.second.priority + 1
      end
    end

    context 'if priority is present' do
      context 'when same priority is not exist' do
        it 'sets given value' do
          @boards.first.priority = 999
          @boards.first.save
          expect(Board.find(@boards.first.id).priority).to eq 999
          expect(Board.find(@boards.second.id).priority).to eq @boards.second.priority
        end
      end

      context 'when same priority is exist' do
        it 'sets given value and increment existent value' do
          @boards.first.subject = 'lucky board'
          @boards.first.save
          expect(Board.find(@boards.first.id).priority).to eq @boards.first.priority
          expect(Board.find(@boards.second.id).priority).to eq @boards.first.priority + 1
        end
      end
    end
  end
end
