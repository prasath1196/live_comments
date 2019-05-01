class UpdateCommentJob < ApplicationJob
  queue_as :default

  def perform(comment)
    post =  comment.post
    ActionCable.server.broadcast 'comment_channel', listing: render_comment_listing(post),post_id:post.id.to_s,post:post
  end

  def render_comment_listing(post)
    ApplicationController.renderer.render(partial: "comments/comment_listing",locals: {post:post})
  end
end
