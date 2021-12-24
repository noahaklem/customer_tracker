require_relative './config/environment.rb'

use Rack::MethodOverride
use CustomersController
run ApplicationController
