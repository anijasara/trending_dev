class TrendingDev < ApplicationRecord
  include HTTParty

  def get_trending_dev_data(params = nil)
    language = params[:language] if params
    frequency = params[:frequency] if params
    self.class.get(Rails.application.secrets[:services][:trendingdev][:host]+"?language=#{language}&since=#{frequency}")
  end

  def latest_trending_devs(params = nil)
    get_trending_dev_data(params).parsed_response
  end
end
