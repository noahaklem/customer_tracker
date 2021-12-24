#require gems
require 'bundler'
Bundler.require

#require files
require_all "app"

# require_relative "../app/models/customer.rb"
# require_relative "../app/models/user.rb"
# require_relative "../app/models/comment.rb"

#setup the database

ActiveRecord::Base.establish_connection({
  adapter: "sqlite3",
  database: "db/development.sqlite"
}) 
