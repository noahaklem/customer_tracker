class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :sessions_secret, ENV["SESSION_SECRET"]
  end

  get "/signup" do
    erb :"signup/signup"
  end

  post "/signup" do
    @user = User.new(params[:user])
    @user.save
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}/customers"
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