require 'rails_helper'

describe Task do
  before do
    @task = Task.new(
      subject: 'Happy task',
      body: 'Create something new',
    )
  end

  subject {@task}

  it {should respond_to(:subject)}
  it {should respond_to(:body)}

  it {should be_valid}

  describe 'when subject is not present' do
    before {@task.subject = ''}
    it {should_not be_valid}
  end
end
