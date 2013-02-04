require 'sinatra'
require 'haml'
require 'twitter_search'
require_relative 'twitter.rb'
require_relative 'util.rb'

# Sinatra application 

get '/' do
  haml :index
end

post '/search' do 
  if params[:query]
    twitter  = Twitter.new
    @results = twitter.search(params[:query])
  end  
  haml :results
end

