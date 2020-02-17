class TrendingDev < ApplicationRecord
  include HTTParty

  def get_trending_dev_data(params = nil)
    language = params[:language] if params
    frequency = params[:frequency] if params
    begin
      self.class.get(ENV['TRENDING_API']+"?language=#{language}&since=#{frequency}")
    rescue
      "Unable to get api results"
    end
  end

  def latest_trending_devs(params = nil)
    get_trending_dev_data(params).parsed_response
  end
end
