class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  def index
    @tweets = Tweet.all
  end

  def show
  end

  def new
    @tweet = Tweet.new
  end

  def edit
  end

  def create
    @tweet = Tweet.new(tweet_params)
  end

  def update
  end

  def destroy
    @tweet.destroy
  end

  private
    def set_tweet
      @tweet = Tweet.find(params[:id])
    end
end
