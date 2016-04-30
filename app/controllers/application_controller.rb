class ApplicationController < ActionController::Base

  # AM: Ohhh, what's Pundit do?

  include Pundit
  protect_from_forgery with: :exception
end
