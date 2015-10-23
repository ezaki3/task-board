require 'rails_helper'

RSpec.describe Task, type: :model do
  it_behaves_like 'card behavior' do
    describe 'validates' do
      context 'valid' do
        it { is_expected.to respond_to(:body) }
      end
    end
  end
end
