require 'rails_helper'

RSpec.describe Comment, type: :model do
  # Testing associations
  it {should belong_to(:post)}
  it {should belong_to(:user)}
  # Testing validations
  it {should validate_presence_of(:content)}
end
