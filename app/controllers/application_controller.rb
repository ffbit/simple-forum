class ApplicationController < ActionController::Base
  protect_from_forgery
  include CategoriesHelper
  include SessionsHelper
end
