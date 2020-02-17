class TrendingDevsController < ApplicationController

  def index
    @trending_devs = TrendingDev.new.latest_trending_devs
  end

  def search_languages
    search_params = {:language => params['language'], :frequency => params['frequency']}
    @language = params['language']
    @trending_devs = TrendingDev.new.latest_trending_devs(search_params)
  end
end
