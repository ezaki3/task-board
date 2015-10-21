require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'validation' do
    let(:group) { build(:group, subject: subject, priority: priority) }
    let(:subject) { 'happy group' }
    let(:priority) { 1 }

    context 'when valid' do
      it { expect(group).to respond_to(:subject) }
      it { expect(group).to respond_to(:priority) }
      it { expect(group).to respond_to(:board_id) }

      it { expect(group).to be_valid }
    end

    context 'when subject is not present' do
      let(:subject) { '' }
      it { expect(group).not_to be_valid }
    end

    context 'when priority is not numeric' do
      let(:priority) { 'a' }
      it { expect(group).not_to be_valid }
    end

    context 'when priority is numeric but not integer' do
      let(:priority) { 10.1 }
      it { expect(group).not_to be_valid }
    end

    context 'when priority is not present' do
      let(:priority) { nil }
      it { expect(group).to be_valid }
    end
  end

  describe 'scope' do
    let(:groups) { create_list(:group, 3, priority: 2, updated_at: now) }
    let(:now) { Time.new }

    it 'returns groups order by priority asc, updated_at desc' do
      groups.first.updated_at = now - 1.day
      groups.first.save
      Group.where(id: [groups.first.id, groups.second.id]).update_all(priority: 1)
      actual = Group.prior
      expect(actual.first).to eq groups.second
      expect(actual.second).to eq groups.first
      expect(actual.third).to eq groups.third
    end
  end

  describe 'priority when created' do
    let!(:group) { create(:group, priority: 1001) }
    let(:creates) { attributes_for(:group, subject: 'a', priority: priority, board_id: board_id) }

    context 'if priority is not present' do
      let(:priority) { nil }

      context 'on same board' do
        let(:board_id) { group.board_id }

        it 'sets max existent value + 1' do
          Group.create(creates)
          expect(Group.find_by(subject: 'a').priority).to eq group.priority + 1
          expect(Group.find(group.id).priority).to eq group.priority
        end
      end

      context 'on another board' do
        let(:board_id) { group.board_id + 1 }

        it 'sets 1' do
          Group.create(creates)
          expect(Group.find_by(subject: 'a').priority).to eq 1
        end
      end
    end

    context 'if priority is present' do
      context 'when same priority is not exist' do
        let(:priority) { 999 }
        let(:board_id) { group.board_id }

        it 'sets given value' do
          Group.create(creates)
          expect(Group.find_by(subject: 'a').priority).to eq priority
          expect(Group.find(group.id).priority).to eq group.priority
        end
      end

      context 'when same priority is exist' do
        let(:priority) { group.priority }

        context 'on same board' do
          let(:board_id) { group.board_id }

          it 'sets given value and increment existent value' do
            Group.create(creates)
            expect(Group.find_by(subject: 'a').priority).to eq priority
            expect(Group.find(group.id).priority).to eq group.priority + 1
          end
        end

        context 'on another board' do
          let(:board_id) { group.board_id + 1 }

          it 'sets given value and NOT increment existent value' do
            Group.create(creates)
            expect(Group.find_by(subject: 'a').priority).to eq priority
            expect(Group.find(group.id).priority).to eq group.priority
          end
        end
      end
    end
  end

  describe 'priority when update' do
    before do
      create_list(:group, 2, board_id: 1)
      Group.update_all(priority: 1001)
      @groups = Group.all
    end

    context 'if priority is not present' do
      context 'on same board' do
        it 'sets max existent value + 1' do
          @groups.first.priority = nil
          @groups.first.save
          expect(Group.find(@groups.first.id).priority).to eq @groups.second.priority + 1
        end
      end

      context 'on another board' do
        it 'sets 1' do
          @groups.first.board_id = 2
          @groups.first.priority = nil
          @groups.first.save
          expect(Group.find(@groups.first.id).priority).to eq 1
        end
      end
    end

    context ' if priority is present' do
      context 'when same priority is not exist' do
        it 'sets given value' do
          @groups.first.priority = 999
          @groups.first.save
          expect(Group.find(@groups.first.id).priority).to eq 999
          expect(Group.find(@groups.second.id).priority).to eq @groups.second.priority
        end
      end

      context 'when same priority is exist' do
        context 'on same board' do
          it 'sets given value and increment existent vale' do
            @groups.first.subject = 'lucky group'
            @groups.first.save
            expect(Group.find(@groups.first.id).priority).to eq @groups.first.priority
            expect(Group.find(@groups.second.id).priority).to eq @groups.first.priority + 1
          end
        end

        context 'on another group' do
          it 'sets given value and NOT increment existent value' do
            @groups.first.board_id = 2
            @groups.first.subject = 'lucky group'
            @groups.first.save
            expect(Group.find(@groups.first.id).priority).to eq @groups.first.priority
            expect(Group.find(@groups.second.id).priority).to eq @groups.second.priority
          end
        end
      end
    end
  end
end
