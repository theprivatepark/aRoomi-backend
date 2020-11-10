class ApplicationController < ActionController::API

    include ActionController::Helpers


    ##prevents Rails from using its authenticity token  to prevent cross-site request forgery (CSRF) attacks
    # skip_before_action :verify_authenticity_token

    ##methods we define below will be passed to all other controllers in the app.
    helper_method :login!, :logged_in?, :current_user, :authorized_user?, :logout!

    def login!
        session[:user_id] = @user.id
    end

    def logged_in?
        !!session[:user_id]
    end

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    
    def authorized_user?
        @user == current_user
    end

    def logout!
        session.clear
    end
end
