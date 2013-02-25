class CategoriesController < ApplicationController
  
  def index
    @categories = Category.find(:all)
  end
  
  def show
    @category = Category.find(params[:id])
    render :partial => 'pictures/thumbnails', :locals => { :pictures => @category.pictures.parent }
  end
  
  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(params[:category])
    if @category.save
      @categories = Category.find(:all)
      respond_to do |format|
        format.js
      end
    else
      render :update do |page|
        page['form'].replace_html :partial => 'form', :locals => { @category => @category }
      end
    end
  end
  
  def edit
    @category = Category.find(params[:id])
  end
  
  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      @categories = Category.find(:all)
      respond_to do |format|
        format.js
      end
    end
  end
  
  def destroy
    @category = Category.find(params[:id])
    @category.pictures.each do |p|
      p.destroy
    end
    @category.destroy
    @categories = Category.find(:all)
    respond_to do |format|
      format.js
    end
  end
  
end
