class TweetsController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :set_tweet, only: %i(show edit update destroy)

  def index
    @tweets = Tweet.page(params[:page]).per(15).order('updated_at DESC')
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

    def tweet_params
      params.require(:tweet).permit(:title, :description, :image)
    end
end
