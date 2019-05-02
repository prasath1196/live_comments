class SubscriptionsController < ApplicationController

  def index

  end
  def create
    @subscription =  current_user.subscriptions.create!(post_category_id:params[:category_id])
    redirect_to subscriptions_path
  end

  def destroy
    @subscription =  current_user.subscriptions.find_by(post_category_id:params[:id])
    @subscription.destroy!
    redirect_to subscriptions_path
  end
end
