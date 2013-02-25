module AdminHelper
  
  def login_logout
    if @current_user
      link = link_to "Log out", logout_path
    else
      link = link_to "Log in", admin_path
    end
    link
  end
  
end
