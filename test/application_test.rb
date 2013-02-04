load '../application.rb'
require 'test/unit'
require 'rack/test'
 
set :environment, :test

class ApplicationTest < Test::Unit::TestCase
  include Rack::Test::Methods
  
  def app
    Sinatra::Application
  end

  def setup
    @twitter = Twitter.new
    @methods = [:search, :show_results]
  end

  def test_index_route
    get '/'
    assert last_response.ok?, 'should be ok!'
  end

  def test_search_route
    post '/search'
    assert last_response.ok?, 'should be ok!'
  end

  def test_instance_of
    assert_instance_of Twitter, @twitter, 'should be instance'
  end

  def test_respond_to_methods
    @methods.each { |method| assert_respond_to @twitter, :method, "Should respond : #{method}" }
  end
  
end



