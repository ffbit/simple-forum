class CategoriesController < ApplicationController
  before_filter :authorizate_admin!, :except => :index
  
  def index
    @categories = Category.all
  end
  
  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(params[:category])
    
    if @category.save
      redirect_to root_path, notice: 'Category was successfully created.'
    else
      render :new
    end
  end
  
  def update
    @category = Category.find(params[:id])

    redirect_to root_path, notice: 'Category was successfully updated.'
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.html { redirect_to categories_url }
      format.json { head :ok }
    end
  end
end
