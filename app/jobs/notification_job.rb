class NotificationJob < ApplicationJob
  queue_as :default

  def perform(post)
    post_category_id = post.post_category.id
    user_ids = PostCategory.find(post_category_id).subscriptions.pluck(:user_id)
    if user_ids.blank?
      nil.check
    else
    user_ids.each do |user_id|
      ActionCable.server.broadcast "notification_channel_#{user_id}",listing:render_post_listing(user_id),post_id:post.id.to_s
    end
    end
  end
  def render_post_listing(user_id)
    posts = User.find(user_id).subscribed_posts
    ApplicationController.renderer.render(partial: "posts/post_listing",locals: {posts:posts,comment:Comment.new, current_user:User.find(user_id)})
  end
end
