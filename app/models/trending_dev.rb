class TrendingDev < ApplicationRecord
  include HTTParty
  # base_uri "https://github-trending-api.now.sh/repositories?language=javascript&since=weekly"

  def get_trending_dev_data
    self.class.get("https://github-trending-api.now.sh/repositories?language=javascript&since=weekly")
  end

  def latest_trending_devs
    get_trending_dev_data.parsed_response
  end
end
