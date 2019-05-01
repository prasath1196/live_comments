class Comment
  include Mongoid::Document
  field :content, type: String
  belongs_to :post

  validates_presence_of :content
  #after_create {UpdateCommentJob.perform_now(self)}


end