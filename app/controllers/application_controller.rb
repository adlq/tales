class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate
    if CONFIG['perform_authentication']
      authenticate_or_request_with_http_basic "Admin panel" do | login, password |
        digest = Digest::MD5.hexdigest(password)
        if login == CONFIG['login'] && digest == CONFIG['password']
          session[:admin] = true
          true
        end
      end
    end
  end
end
