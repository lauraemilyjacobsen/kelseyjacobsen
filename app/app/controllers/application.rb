# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  def default_url_options(options)
{ :trailing_slash => true }
end
  
  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'dc6fc949596156182ebdfccc01f7d222'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
  
  protected
  # Retrieves the id of a logged-in user and stores the user in @user.
  def get_user
    return unless session[:user_id]
    @user = User.find_by_id(session[:user_id])
  end
  
  # Redirects to the login page if there is no logged-in user.
  def login_required
    unless User.find_by_id(session[:user_id])
      redirect_to :controller => 'admin' , :action => 'login'
    end
  end

  end
