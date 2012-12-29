class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate
    authenticate_or_request_with_http_basic "Admin panel" do | login, password |
      if login == 'nghia' && password == 'foobar'
        session[:admin] = true
        true
      end
    end
  end
end
