# README

A simple Ruby on Rails application which lists all trending developers in Github by hitting an external API.

Pushed the working application into Heroku, URL : https://lit-castle-05833.herokuapp.com/

Manual

    Clone the repository
    Install gems with bundle install
    Run rails server in terminal
    
 To run unit tests:
 
 bundle exec rspec -> trending_dev_spec.rb & trending_devs_controller_spec.rb
 
    
  TrendingDevsController is the base controller which handles the requests.
  
  TrendingDev is the model (app/models/trending_dev.rb) which hits the third party to get the json response.
  
  Heroku Demo Application: https://lit-castle-05833.herokuapp.com/
  
  
  All the trending developers irrespective of language and frequency is listed in the home page.
  
  If you want to search for specific language, given 2 text fields
  
  Give Language for eg: ruby  , in Language field
  
  and since value for eg: 'daily' in frequency field
  
  and click Submit to see your search results!!
  

Cheers!
