require 'sinatra'

class Echo < Sinatra::Default
  get '/' do
    erb :index
  end

  post '/' do
    request.body.read
  end
  
  
end