class UsersController < ApplicationController

#Index

#New

#Create

#Show
  get '/users/:id/customers' do 
    @user = User.find(params[:id])
    erb :"users/show"
  end
#Delete

#Edit

#Update

end