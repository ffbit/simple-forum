class TopicsController < ApplicationController
  before_filter :authenticate_user!, except: :show
  before_filter :authenticate_admin!, only: [:edit, :update, :delete]
  
  def show
    @topic = Topic.find(params[:id])
    @posts = Post.paginate(:page => params[:page])
  end

  def new
    @topic = Topic.new forum_id: params[:forum_id]
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def create
    @topic = Topic.new(params[:topic].merge(user: current_user))

    if @topic.save
      redirect_to @topic, notice: 'Topic was successfully created.'
    else
      render :new
    end
  end
  
  def update
    @topic = Topic.find(params[:id])
    
    if @topic.update_attributes(params[:topic])
      redirect_to @topic, notice: 'Topic was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    
    redirect_to @topic.forum, notice: 'Topic was successfully deleted.'
  end
end
