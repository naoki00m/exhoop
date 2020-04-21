class VideosController < ApplicationController
  before_action :set_tags, only: [:index, :new, :create, :edit, :search]

  def index
    @videos = Video.includes(:user).page(params[:page]).order("created_at DESC").per(12)
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.create(video_params)
    if @video.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @video = Video.find(params[:id])
    @like = Like.new
    @new_comment = Comment.new
    @comments = @video.comments.includes(:user)
    @replies = Comment.group(:reply).count
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    video = Video.find(params[:id])
    video.update(video_params)
    redirect_to video_path(video.id)
  end

  def destroy
    video = Video.find(params[:id])
    video.destroy
    redirect_to root_path
  end

  def search
    @videos = Video.search(params[:keyword]).page(params[:page]).order("created_at DESC").per(12)
  end

  private

  def video_params
    params.require(:video).permit(:name, :work, :tag_id, :description).merge(user_id: current_user.id)
  end

  def set_tags
    @tags = Tag.all
  end
end
