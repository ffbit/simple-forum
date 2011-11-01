class TopicsController < ApplicationController
  before_filter :authenticate_user!, except: :show
  before_filter :authenticate_admin!, only: [:edit, :update, :delete]
  
  
  def index
    @topics = Topic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @topics }
    end
  end

  # GET /topics/1
  # GET /topics/1.json
  def show
    @topic = Topic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @topic }
    end
  end

  def new
    @topic = Topic.new forum_id: params[:forum_id]
  end

  # GET /topics/1/edit
  def edit
    @topic = Topic.find(params[:id])
  end

  def create
    @topic = Topic.new(params[:topic])

    if @topic.save
      # I want a transaction here.
      @topic.posts.create(user: current_user, content: @topic.content)
      
      redirect_to @topic, notice: 'Topic was successfully created.'
    else
      render :new
    end
  end

  # PUT /topics/1
  # PUT /topics/1.json
  def update
    @topic = Topic.find(params[:id])

    respond_to do |format|
      if @topic.update_attributes(params[:topic])
        format.html { redirect_to @topic, notice: 'Topic was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topics/1
  # DELETE /topics/1.json
  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy

    respond_to do |format|
      format.html { redirect_to topics_url }
      format.json { head :ok }
    end
  end
end
