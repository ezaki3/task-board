require 'rails_helper'

RSpec.describe Board, type: :model do
  before do
    @board = Board.new(
      subject: 'Lucky board',
      priority: 1000,
    )
  end

  subject { @board }

  it { should respond_to(:subject) }
  it { should respond_to(:priority) }

  it { should be_valid }

  describe 'when subject is not present' do
    before { @board.subject = '' }
    it { should_not be_valid }
  end

  describe 'when priority is not numeric' do
    before { @board.priority = 'a' }
    it { should_not be_valid }
  end

  describe 'when priority is numeric but not integer' do
    before { @board.priority = 10.1 }
    it { should_not be_valid }
  end
end
