class TrendingDevsController < ApplicationController
  def index
    @trending_devs = TrendingDev.new.latest_trending_devs
  end
end
