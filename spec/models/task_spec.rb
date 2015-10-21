require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'validation' do
    let(:task) { build(:task, subject: subject, priority: priority) }
    let(:subject) { 'happy task' }
    let(:priority) { 1 }

    context 'when valid' do
      it { expect(task).to respond_to(:subject) }
      it { expect(task).to respond_to(:body) }
      it { expect(task).to respond_to(:priority) }
      it { expect(task).to respond_to(:group_id) }

      it { expect(task).to be_valid }
    end

    context 'when subject is not present' do
      let(:subject) { '' }
      it { expect(task).not_to be_valid }
    end

    context 'when priority is not numeric' do
      let(:priority) { 'a' }
      it { expect(task).not_to be_valid }
    end

    context 'when priority is numeric but not integer' do
      let(:priority) { 100.1 }
      it { expect(task).not_to be_valid }
    end

    describe 'when priority is not present' do
      let(:priority) { nil }
      it { expect(task).to be_valid }
    end
  end

  describe 'scope' do
    let(:tasks) { create_list(:task, 3, priority: 2, updated_at: now) }
    let(:now) { Time.new }

    it 'returns tasks order by priority asc, updated_at desc' do
      tasks.first.updated_at = now - 1.day
      tasks.first.save
      Task.where(id: [tasks.first.id, tasks.second.id]).update_all(priority: 1)
      actual = Task.prior
      expect(actual.first).to eq tasks.second
      expect(actual.second).to eq tasks.first
      expect(actual.third).to eq tasks.third
    end
  end

  describe 'priority when created' do
    let(:task) { create(:task, priority: 1001) }
    let(:creates) { attributes_for(:task, subject: 'a', priority: priority, group_id: group_id) }

    context 'if priority is not present' do
      let(:priority) { nil }

      context 'on same group' do
        let(:group_id) { task.group_id }

        it 'sets max existent value + 1' do
          Task.create(creates)
          expect(Task.find_by(subject: 'a').priority).to eq task.priority + 1
          expect(Task.find(task.id).priority).to eq task.priority
        end
      end

      context 'on another group' do
        let(:group_id) { task.group_id + 1 }

        it 'sets 1' do
          Task.create(creates)
          expect(Task.find_by(subject: 'a').priority).to eq 1
        end
      end
    end

    context 'if priority is present' do
      context 'when same priority is not exist' do
        let(:priority) { 999 }
        let(:group_id) { task.group_id }

        it 'sets given value' do
          Task.create(creates)
          expect(Task.find_by(subject: 'a').priority).to eq priority
          expect(Task.find(task.id).priority).to eq task.priority
        end
      end

      context 'when same priority is exist' do
        let(:priority) { task.priority }

        context 'on same group' do
          let(:group_id) { task.group_id }

          it 'sets given value and increment existent value' do
            Task.create(creates)
            expect(Task.find_by(subject: 'a').priority).to eq priority
            expect(Task.find(task.id).priority).to eq task.priority + 1
          end
        end

        context 'on another group' do
          let(:group_id) { task.group_id + 1 }

          it 'sets given value and NOT increment existent value' do
            Task.create(creates)
            expect(Task.find_by(subject: 'a').priority).to eq priority
            expect(Task.find(task.id).priority).to eq task.priority
          end
        end
      end
    end
  end

  describe 'priority when update' do
    before do
      create_list(:task, 2, group_id: 1)
      Task.update_all(priority: 1001)
      @tasks = Task.all
    end

    context 'if priority is not present' do
      context 'on same group'do
        it 'sets max existent value + 1' do
          @tasks.first.priority = nil
          @tasks.first.save
          expect(Task.find(@tasks.first.id).priority).to eq @tasks.second.priority + 1
        end
      end

      context 'on another group' do
        it 'sets 1' do
          @tasks.first.group_id = 2
          @tasks.first.priority = nil
          @tasks.first.save
          expect(Task.find(@tasks.first.id).priority).to eq 1
        end
      end
    end

    context 'if priority is present' do
      context 'when same priority is not exist' do
        it 'sets given value' do
          @tasks.first.priority = 999
          @tasks.first.save
          expect(Task.find(@tasks.first.id).priority).to eq 999
          expect(Task.find(@tasks.second.id).priority).to eq @tasks.second.priority
        end
      end

      context 'when same priority is exist' do
        context 'on same group' do
          it 'sets given value and increment existent value' do
            @tasks.first.subject = 'lucky task'
            @tasks.first.save
            expect(Task.find(@tasks.first.id).priority).to eq @tasks.first.priority
            expect(Task.find(@tasks.second.id).priority).to eq @tasks.first.priority + 1
          end
        end

        context 'when another group' do
          it 'sets given value and NOT increment existent valud' do
            @tasks.first.group_id = 2
            @tasks.first.subject = 'lucky task'
            @tasks.first.save
            expect(Task.find(@tasks.first.id).priority).to eq @tasks.first.priority
            expect(Task.find(@tasks.second.id).priority).to eq @tasks.first.priority
          end
        end
      end
    end
  end
end
