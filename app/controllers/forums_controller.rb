class ForumsController < ApplicationController
  before_filter :authorize!, :except => :show

  def show
    @forum = Forum.find(params[:id])
  end

  def new
    @forum = Forum.new :category_id => params[:category_id]
  end

  def edit
    @forum = Forum.find(params[:id])
  end

  def create
    @forum = Forum.new(params[:forum])
    
    if @forum.save
      redirect_to root_path, notice: 'Forum was successfully created.'
    else
      render :new
    end
  end

  def update
    @forum = Forum.find(params[:id])

    if @forum.save
      redirect_to root_path, notice: 'Forum was successfully updated.'
    else
      render :new
    end
  end

  def destroy
    @forum = Forum.find(params[:id])
    @forum.destroy
    
    redirect_to root_path, notice: 'Forum was successfully deleted.'
  end
end
