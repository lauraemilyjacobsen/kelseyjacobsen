class UsersController < ApplicationController
  
  # GET /users/id
  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new
    respond_to do |format|
      format.html
      format.xml { render :xml => @user }
    end
  end
  
  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        flash[:notice] = "User #{@user.name} was successfully created."
        format.html { redirect_to @user }        
      else
        format.html { render :action => "new" }          
      end
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  
  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])
    if User.authenticate(@user.name, params[:current_password])
      if @user.update_attributes(params[:user])      
        flash[:notice] = "You have changed your password."
        redirect_to :controller => 'admin'
      else 
        flash[:notice] = "There was a problem, please try again."
        render :action => :edit
      end
    else
        flash[:notice] = "You did not enter your current password correctly."
        render :action => :edit
     end 
  end
  
end
