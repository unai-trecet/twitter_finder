class TwitterController < ApplicationController
  before_action :set_twitter_client

  def index
    @tweets = []

    @client.search("to:#{ params[:search]}", result_type: "recent").take(10).each do |tweet|
      @tweets << tweet
    end

  end

  private

  def set_twitter_client
    @client = Twitter::REST::Client.new(Rails.configuration.twitter)
  end

end
