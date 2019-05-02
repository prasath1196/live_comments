require 'rails_helper'

RSpec.describe PostCategory, type: :model do
  it {should have_many(:posts).with_dependent(:destroy)}
  it {should validate_presence_of(:name) }
end
