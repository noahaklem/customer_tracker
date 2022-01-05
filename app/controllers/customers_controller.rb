class CustomersController < ApplicationController

  #Index
  get "/customers" do
    # binding.pry
    @customers = Customer.all 
    erb :"customers/index"
  end

  #New
  get "/customers/new" do
    erb :"customers/new"
  end

  post "/customers" do
    customer = Customer.create(params)
    if customer.valid?
      redirect "/customers/#{customer.id}"
    else 
      @errors = customer.errors.full_messages
      erb :"customers/new"
    end
  end

  #Show
  get "/customers/:id" do
    # binding.pry
    @customer = Customer.find(params[:id])
    erb :"customers/show"
  end

  #Edit
  get "/customers/:id/edit" do
    @customer = Customer.find(params[:id])
    erb :"customers/edit"
  end

  #Update
  patch "/customers/:id" do
    # binding.pry
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