class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :fetch_new_comment, only:[:index]
  def index
    @posts = Post.all
  end

  def show
  end

  def create
    if current_user.posts.create!(post_params)
      redirect_to root_path
    else
      redirect_to :new_post_path
    end
  end

  def new
    @post = current_user.posts.new
  end

  private
  def post_params
    params.require(:post).permit(:title,:content)
  end

  def fetch_new_comment
    @comment = Comment.new
  end
end
