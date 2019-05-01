class CommentsController < ApplicationController

  def create
    @comment = Comment.create!(comment_params)

    respond_to do |format|
      format.js {render 'update_comment_listing'}
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content,:post_id)
  end
end
