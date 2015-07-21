require 'rails_helper'

RSpec.describe Group, type: :model do
  before do
    @group = Group.new(
      subject: 'Fortune group',
    )
  end

  subject { @group }

  it {should respond_to(:subject) }

  it { should be_valid }

  describe 'when subject is not present' do
    before { @group.subject = '' }
    it { should_not be_valid }
  end
end
