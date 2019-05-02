require 'rails_helper'

RSpec.describe PostCategory, type: :model do
  it {should have_many(:posts)}
  it {should validate_presence_of(:name) }
end
