require 'rails_helper'

RSpec.shared_examples 'item behavior' do
  let(:model) { described_class }
  let(:obj_name) { model.to_s.underscore.to_sym }

  describe 'validates' do
    let(:resource) { build(obj_name, name: name, priority: priority) }
    let(:name) { 'happy resource' }
    let(:priority) { 1 }

    subject { resource }

    context 'valid' do
      it { is_expected.to respond_to(:name) }
      it { is_expected.to respond_to(:parent_id) }
      it { is_expected.to respond_to(:body) }

      it { is_expected.to be_valid }
    end

    context 'name is not present' do
      let(:name) { '' }
      it { is_expected.not_to be_valid }
    end

    context 'priority is not numeric' do
      let(:priority) { 'a' }
      it { is_expected.not_to be_valid }
    end

    context 'priority is numeric but not integer' do
      let(:priority) { 10.1 }
      it { is_expected.not_to be_valid }
    end

    context 'priority is negative integer' do
      let(:priority) { -1 }
      it { is_expected.to be_valid }
    end

    context 'priority is not present' do
      let(:priority) { nil }
      it { is_expected.to be_valid }
    end
  end

  describe 'scope' do
    describe 'prior' do
      let(:resources) { create_list(obj_name, 3, priority: 2, updated_at: now) }
      let(:now) { Time.new }

      it 'returns resources order by priority asc, updated desc' do
        resources.first.updated_at = now - 1.day
        resources.first.save
        model.where(id: [resources.first.id, resources.second.id]).update_all(priority: 1)
        actual = model.prior
        expect(actual.first).to eq resources.second
        expect(actual.second).to eq resources.first
        expect(actual.third).to eq resources.third
      end
    end

    describe 'peers' do
      let(:resources) { create_list(obj_name, 3, parent_id: 1) }

      it 'returns resources only same parent', skip: described_class == Board do
        resources.first.parent_id = resources.first.parent_id + 1
        resources.first.save
        actual = model.peers(resources.second.parent_id)
        expect(actual.size).to eq 2
      end
    end
  end

  describe '#adjust_priority creates' do
    let!(:resource1) { create(obj_name, parent_id: 1, priority: 11) }
    let!(:resource2) { create(obj_name, parent_id: 1, priority: 12) }
    let(:attributes) {
      attributes_for(obj_name, name: name, priority: priority, parent_id: parent_id)
    }
    let(:name) { 'lucky resource' }

    context 'priority is not present' do
      let(:priority) { nil }

      context 'resources exist on same parent' do
        let(:parent_id) { resource1.parent_id }

        it 'sets max existent value + 1' do
          model.create(attributes)
          expect(model.find_by(name: name).priority).to eq resource2.priority + 1
          expect(model.find(resource1.id).priority).to eq resource1.priority
          expect(model.find(resource2.id).priority).to eq resource2.priority
        end
      end

      context 'resources exists on another parent only' do
        let(:parent_id) { resource1.parent_id + 1 }

        it 'sets 1', skip: described_class == Board do
          model.create(attributes)
          expect(model.find_by(name: name).priority).to eq 1
          expect(model.find(resource1.id).priority).to eq resource1.priority
          expect(model.find(resource2.id).priority).to eq resource2.priority
        end
      end
    end

    context 'priority is present' do
      context 'when same priority is not exist' do
        let(:priority) { 999 }
        let(:parent_id) { resource1.parent_id }

        it 'sets given value' do
          model.create(attributes)
          expect(model.find_by(name: name).priority).to eq priority
          expect(model.find(resource1.id).priority).to eq resource1.priority
          expect(model.find(resource2.id).priority).to eq resource2.priority
        end
      end

      context 'when same priority is exist' do
        let(:priority) { resource2.priority }

        context 'on same parent' do
          let(:parent_id) { resource2.parent_id }

          it 'sets given value and adjusts other resources' do
            model.create(attributes)
            expect(model.find_by(name: name).priority).to eq priority
            expect(model.find(resource1.id).priority).to eq resource1.priority
            expect(model.find(resource2.id).priority).to eq resource2.priority + 1
          end
        end

        context 'on another parent' do
          let(:parent_id) { resource2.parent_id + 1 }

          it 'sets given value and NOT changes existent resources', skip: described_class == Board do
            model.create(attributes)
            expect(model.find_by(name: name).priority).to eq priority
            expect(model.find(resource1.id).priority).to eq resource1.priority
            expect(model.find(resource2.id).priority).to eq resource2.priority
          end
        end
      end
    end
  end

  describe '#adjust_priority updates' do
    before do
      @resources = [
        create(obj_name, parent_id: 1, priority: 11),
        create(obj_name, parent_id: 1, priority: 12),
        create(obj_name, parent_id: 1, priority: 13)
      ]
    end

    context 'priority is not present' do
      context 'on same parent' do
        it 'sets max existent value + 1' do
          @resources.first.priority = nil
          @resources.first.save
          expect(model.find(@resources.first.id).priority).to eq @resources.third.priority + 1
        end
      end

      context 'on another parent' do
        it 'sets 1', skip: described_class == Board do
          @resources.first.parent_id = @resources.first.parent_id + 1
          @resources.first.priority = nil
          @resources.first.save
          expect(model.find(@resources.first.id).priority).to eq 1
        end
      end
    end

    context 'priority is present' do
      context 'when same priority is not exist' do
        it 'sets given value' do
          @resources.first.priority = 999
          @resources.first.save
          expect(model.find(@resources.first.id).priority).to eq 999
          expect(model.find(@resources.second.id).priority).to eq @resources.second.priority
        end
      end

      context 'when same priority is exist' do
        context 'on same parent' do
          context 'move downward' do
            it 'sets given value and adjusts other resources' do
              @resources.first.priority = @resources.second.priority
              @resources.first.save
              expect(model.find(@resources.first.id).priority).to eq @resources.second.priority
              expect(model.find(@resources.second.id).priority).to eq @resources.second.priority - 1
              expect(model.find(@resources.third.id).priority).to eq @resources.third.priority
            end
          end

          context 'move upward' do
            it 'sets given value and adjusts other resources' do
              @resources.third.priority = @resources.second.priority
              @resources.third.save
              expect(model.find(@resources.third.id).priority).to eq @resources.second.priority
              expect(model.find(@resources.second.id).priority).to eq @resources.second.priority + 1
              expect(model.find(@resources.first.id).priority).to eq @resources.first.priority
            end
          end
        end

        context 'when another parent' do
          it 'sets given value and NOT changes other resources', skip: described_class == Board do
            @resources.first.parent_id = 2
            @resources.first.priority = @resources.second.priority
            @resources.first.save
            expect(model.find(@resources.first.id).priority).to eq @resources.second.priority
            expect(model.find(@resources.second.id).priority).to eq @resources.second.priority
            expect(model.find(@resources.third.id).priority).to eq @resources.third.priority
          end
        end
      end
    end

    context 'move into another parent' do
      let(:resources2) { create_list(obj_name, 3, parent_id: 2) }
      it "adjusts new parent's resources and slides old ones", skip: described_class == Board do
        resources2.second.parent_id = @resources.second.parent_id
        resources2.second.priority = @resources.second.priority
        resources2.second.save
        expect(model.find(resources2.second.id).parent_id).to eq @resources.second.parent_id
        expect(model.find(resources2.second.id).priority).to eq @resources.second.priority
        expect(model.find(@resources.second.id).priority).to eq @resources.second.priority + 1
        expect(model.find(resources2.third.id).priority).to eq resources2.third.priority - 1
      end
    end
  end

  describe '#slide_priority destroys' do
    let(:resources) { create_list(obj_name, 3, parent_id: 1) }

    it 'slide below resources' do
      resources.second.destroy
      expect(model.find(resources.first.id).priority).to eq resources.first.priority
      expect(model.find(resources.third.id).priority).to eq resources.second.priority
    end
  end
end
