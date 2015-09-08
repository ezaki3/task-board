require 'rails_helper'

RSpec.describe Task, type: :model do
  before do
    @task = Task.new(
      subject: 'Happy task',
      body: 'Create something new',
      priority: 100,
    )
  end

  subject { @task }

  it { should respond_to(:subject) }
  it { should respond_to(:body) }
  it { should respond_to(:priority) }

  it { should be_valid }

  describe 'when subject is not present' do
    before { @task.subject = '' }
    it { should_not be_valid }
  end

  describe 'when priority is not numeric' do
    before { @task.priority = 'a' }
    it { should_not be_valid }
  end

  describe 'when priority is numeric but not integer' do
    before { @task.priority = 100.1 }
    it { should_not be_valid }
  end

  describe 'when priority is not present' do
    before { @task.priority = '' }
    it { should be_valid }
  end
end
