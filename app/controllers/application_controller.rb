class ApplicationController < ActionController::Base
    include ActionController::MimeResponds
    protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token

    respond_to :json
end
