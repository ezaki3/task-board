require 'rails_helper'

RSpec.describe Board, type: :model do
  it_behaves_like 'card behavior'
end
