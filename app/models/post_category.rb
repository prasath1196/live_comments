class PostCategory
  include Mongoid::Document
  field :name, type: String
  has_many :posts
  has_many :subscriptions
  validates_presence_of :name

end
