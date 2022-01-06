class CustomersController < ApplicationController

  #Index
  get "/customers" do
    if logged_in?
      @user = User.find(session[:user_id])
      @customers = Customer.all 
      erb :"customers/index"
    else
      flash[:notice] = "You need to be logged in to view this. Please login."
      redirect "/login"
    end
  end

  #New
  get "/customers/new" do
    if logged_in?
      @user = User.find(session[:user_id])
      erb :"customers/new"
    else
      flash[:notice] = "You need to be logged in to view this. Please login."
      redirect "/login"
    end
  end

  post "/customers" do
    customer = Customer.create(params)
    if customer.valid?
      @user = User.find(session[:user_id])
      redirect "/customers/#{customer.id}"
    else 
      erb :"customers/new"
    end
  end

  #Show
  get "/customers/:id" do
    if logged_in?
      @customer = Customer.find(params[:id])
      @user = User.find(session[:user_id])
      erb :"customers/show"
    else
      flash[:notice] = "You need to be logged in to view this. Please login."
      redirect "/login"
    end
  end

  #Edit
  get "/customers/:id/edit" do
    if logged_in?
      @customer = Customer.find(params[:id])
      erb :"customers/edit"
    else
      flash[:notice] = "You need to be logged in to view this. Please login."
      redirect "/login"
    end
  end

  #Update
  patch "/customers/:id" do
    @customer = Customer.find(params[:id])
    @customer.update(params['customer'])
    redirect "/customers/#{@customer.id}" 
  end

 

  #Delete
  delete "/customers/:id" do
    customer = Customer.find(params[:id])
    customer.destroy
    redirect "/customers"
  end

end