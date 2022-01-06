require_relative './config/environment.rb'

use Rack::MethodOverride

use SessionsController
use CommentsController
use UsersController
use CustomersController
run ApplicationController
