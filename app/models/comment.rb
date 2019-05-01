class Comment
  include Mongoid::Document
  field :content, type: String
  belongs_to :post
  belongs_to :user

  validates_presence_of :content
  #after_create {UpdateCommentJob.perform_now(self)}


end