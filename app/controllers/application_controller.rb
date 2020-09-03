class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
end

def default_url_options
  { host: ENV["www.surfontime.com"] || "localhost:3000" }
end
