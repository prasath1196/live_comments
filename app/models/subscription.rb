class Subscription
  include Mongoid::Document
  belongs_to :post_category
  belongs_to :user

end
