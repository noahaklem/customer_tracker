class CommentsController < ApplicationController
#Index

#New

#Create
  post "/comments" do
    comment = Comment.new(params)
    if comment.save
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