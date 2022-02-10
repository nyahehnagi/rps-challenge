require 'sinatra'
require "sinatra/reloader" if development?

class RPS < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  # Start the server if this file is executed directly 
  # (do not change the line below)
  run! if app_file == $0
end