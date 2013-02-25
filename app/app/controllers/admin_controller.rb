class AdminController < ApplicationController
  before_filter :login_required, :except => :login
  before_filter :get_user, :except => [:login, :logout]
  
  def index
    @categories = Category.find(:all)
    @pictures = Picture.parent
  end

  def login
    if request.post?
      user = User.authenticate(params[:name], params[:password])
      if user
        session[:user_id] = user.id
        redirect_to :action => :index
      else
        flash.now[:notice] = "Invalid name/password combination."
      end
    end
  end

  def logout
    @user = session[:user_id] = nil
    redirect_to :action => 'login'
  end
  
  def show_category
    @category = Category.find(params[:id])
    render :partial => 'pictures/admin_thumbnails',
      :locals => { :pictures => @category.pictures.parent }
  end
  
  def manage_categories
    @categories = Category.find(:all)
  end

end
