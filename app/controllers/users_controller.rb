class UsersController < ApplicationController

#Index

#New
  get "/signup" do
    erb :"users/signup"
  end

  post "/signup" do
    @user = User.new(params[:user])
    if @user && @user.save
      session[:user_id] = @user.id
      redirect "/users/#{ @user.id }/customers"
    else
      @errors = user.errors
      erb :"users/signup"
    end
  end

#Create

#Show
  get '/users/:id/customers' do
    if logged_in?
      @user = User.find(params[:id])
      erb :"users/show"
    else
      erb :"sessions/login"
    end
  end
#Delete

#Edit

#Update

end