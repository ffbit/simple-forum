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

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :ok }
    end
  end
end
