require 'rails_helper'

RSpec.describe User, type: :model do

  # Validates Association
  it {should have_many(:posts).with_dependent(:destroy)}
  it {should have_many(:comments).with_dependent(:destroy)}


end
