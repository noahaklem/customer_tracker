class SessionsController < ApplicationController

  get "/login" do
    erb :"sessions/login"
  end

  post "/login" do
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password]) 
      session[:user_id] = @user.id
      redirect "/users/#{@user.id}/customers"
    else
      flash[:notice] = "Entered invalid username or password. Please try again."
      erb :"sessions/login"
    end
  end

  get "/logout" do
    session.clear
    redirect "/login"
  end
end