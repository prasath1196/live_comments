class Post
  include Mongoid::Document
  field :title, type: String
  field :content, type: String
  has_many :comments, dependent: :destroy
  belongs_to :user

  validates_presence_of :title,:content
end
