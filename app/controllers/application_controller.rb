require 'sinatra'

class ApplicationController < Sinatra::Base

  configure do
    register Sinatra::ActiveRecordExtension

    enable :sessions
    set :session_secret, "my_application_secret"
    set :views, Proc.new { File.join(root, "../views/") }
  end
  

  get '/' do
    erb :index
  end
end