class TwitterController < ApplicationController
  before_action :set_twitter_client

  def index
    @tweets = params[:search].present? ? search : []
  end

  private

  def set_twitter_client
    @client = Twitter::REST::Client.new(Rails.configuration.twitter)
  end

  def search
    @client.search("to:#{ params[:search]}", result_type: "recent").take(10)
  end

end
