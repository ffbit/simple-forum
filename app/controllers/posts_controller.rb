class PostsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authenticate_admin!, only: [:edit, :update, :delete]
  
  def new
    @post = Post.new(topic_id: params[:topic_id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(params[:post].merge(user: current_user))
    
    if @post.save
      redirect_to @post.topic, notice: 'Post was successfully created.'
    else
      render :new
    end
  end
  
  def update
    @post = Post.find(params[:id])
    
    if @post.update_attributes(params[:post])
      redirect_to @post.topic, notice: 'Post was successfully updated.'
    else
      render :new
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to @post.topic, notice: 'Post was successfully deleted.'
  end
end
