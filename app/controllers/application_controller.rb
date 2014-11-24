class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from 'ActiveRecord::RecordNotFound' do
    render(:partial => 'exceptions/record_not_found', :status => :not_found)
  end
end
