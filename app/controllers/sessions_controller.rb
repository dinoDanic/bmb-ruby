class SessionsController < Devise::SessionsController

    respond_to :json
  
    def create
      super { @token = current_token }
    end
  
    private
  
    def current_token
      request.env['warden-jwt_auth.token']
    end
  end