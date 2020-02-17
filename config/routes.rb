Rails.application.routes.draw do
  root 'trending_devs#index'

  post 'trending_devs/search_languages', :to => 'trending_devs#search_languages'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
