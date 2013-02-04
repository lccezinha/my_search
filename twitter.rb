require 'twitter_search'

class Twitter

  def initialize
    @client = TwitterSearch::Client.new('thunderthimble')
  end
  
  def search(query_search)
    @results = @client.query(:q => query_search)
  end

end
