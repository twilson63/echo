require 'sinatra'
require 'authorization'

class Echo < Sinatra::Default
  set :run, false
  set :environment, ENV['RACK_ENV']

  helpers do
    include Sinatra::Authorization
  end

  get '/' do
    erb :index
  end

  post '/' do
    request.body.read
  end
  
  post '/secure' do
    require_administrative_privileges
    request.body.read
  end
  
end