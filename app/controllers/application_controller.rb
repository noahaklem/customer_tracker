class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :sessions_secret, ENV["SESSION_SECRET"]
    register Sinatra::Flash
  end

  get "/" do
    redirect "/login"
  end

  helpers do 
    def logged_in?
      session[:user_id]
    end

    def current_user
      @user ||= User.find_by(id: session[:user_id])
    end
  end
end