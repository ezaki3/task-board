require 'rails_helper'

RSpec.describe Group, type: :model do
  before do
    @group = Group.new(
      subject: 'Fortune group',
      priority: 10,
    )
  end

  subject { @group }

  it { should respond_to(:subject) }
  it { should respond_to(:priority) }

  it { should be_valid }

  describe 'when subject is not present' do
    before { @group.subject = '' }
    it { should_not be_valid }
  end

  describe 'when priority is not numeric' do
    before { @group.priority = 'a' }
    it { should_not be_valid }
  end

  describe 'when priority is numeric but not integer' do
    before { @group.priority = 10.1 }
    it { should_not be_valid }
  end
end
