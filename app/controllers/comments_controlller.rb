class CommentsController < ApplicationController
#Index

#New

#Create
  post "/comments" do
    # binding.pry
    comment = Comment.new(params)
    if comment.user_id != nil
      redirect "customers/#{comment.customer.id}"
    else
      redirect "customers/#{params[:customer_id]}"
    end
  end


#Show

#Delete

#Edit

#Update
end