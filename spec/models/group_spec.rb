require 'rails_helper'

RSpec.describe Group, type: :model do
  it_behaves_like 'item behavior'

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
