class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :sessions_secret, ENV['SESSION_SECRET']
  end

  # get "/" do
  #   "Hello Everyone"
  # end

end