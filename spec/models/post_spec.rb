require 'rails_helper'

RSpec.describe Post, type: :model do

  # Testing associations
  it { should have_many(:comments).with_dependent(:destroy) }
  it {should belong_to(:user)}
  it {should belong_to(:post_category)}

  #Testing validations
  it { should validate_presence_of(:title)}
  it { should validate_presence_of(:content)}
end
