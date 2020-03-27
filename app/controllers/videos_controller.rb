class VideosController < ApplicationController
  
  def index
    @videos = Video.includes(:user).page(params[:page]).order("created_at DESC").per(12)
    @tags = Tag.all
    @image = current_user.image
  end

  def new
    @video = Video.new
    @tags = Tag.all
  end

  def create
    Video.create(video_params)
    redirect_to root_path
  end

  def show
    @video = Video.find(params[:id])
    @like = Like.new
  end

  def edit
    @video = Video.find(params[:id])
    @tags = Tag.all
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

  private

  def video_params
    params.require(:video).permit(:name, :work, :tag_id).merge(user_id: current_user.id)
  end

end
