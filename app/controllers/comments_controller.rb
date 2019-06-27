class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    tweet = Tweet.find(params[:tweet_id])
    redirect_to tweet_path(tweet)
  end

  def destroy
  end

  private
    def comment_params
      params.permit(:text, :tweet_id).merge(user_id: current_user.id)
    end
end
