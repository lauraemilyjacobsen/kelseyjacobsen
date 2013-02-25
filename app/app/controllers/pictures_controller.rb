class PicturesController < ApplicationController
 before_filter :login_required, :except => [:index, :show]
  
  # GET /pictures
  # GET /pictures.xml
  def index
    @picture = Picture.front_page
    @categories = Category.find(:all)
  end

  # GET /pictures/1
  # GET /pictures/1.xml
  def show
    @picture = Picture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @picture }
    end
  end

  # GET /pictures/new
  # GET /pictures/new.xml
  def new
    @picture = Picture.new
  end

  # GET /pictures/1/edit
  def edit
    @picture = Picture.find(params[:id])
  end

  # POST /pictures
  # POST /pictures.xml
  def create
    @picture = Picture.new(params[:picture])    
    if @picture.save
      redirect_to :controller => 'pictures', :action => 'admin_show', :id => @picture.id
    else
      render :action => 'new'
    end    
  end

  def admin_show
    @picture = Picture.find(params[:id])
  end
  
  # PUT /pictures/1
  # PUT /pictures/1.xml
  def update
    @picture = Picture.find(params[:id])
    if @picture.update_attributes(params[:picture])
      respond_to do |format|
        format.js
      end
    else
      render :action => 'edit'
    end
  end

  # DELETE /pictures/1
  # DELETE /pictures/1.xml
  def destroy
    @picture = Picture.find(params[:id])
    @category = Category.find(@picture.category_id)
    @picture.destroy
    render :partial => 'admin_thumbnails', :locals => { :pictures => @category.pictures  }
  end
  
  def set_as_front_page
    @picture = Picture.find(params[:id])
    @picture.set_as_front_page
    render :partial => 'set_as_front_page', :locals => { :picture => @picture }
  end
  
end
