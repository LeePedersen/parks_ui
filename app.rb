require('sinatra')
require('sinatra/reloader')
require('pry')
require './lib/park'
also_reload('lib/**/*.rb')
require 'net/http'

get('/') do
  @parks = Park.get_api_response('http://localhost:3000/parks')
  erb(:index)
end
