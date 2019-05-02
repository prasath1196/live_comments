class Post
  include Mongoid::Document
  field :title, type: String
  field :content, type: String
  has_many :comments, dependent: :destroy
  belongs_to :user
  belongs_to :post_category
  validates_presence_of :title,:content
end
