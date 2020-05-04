class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    redirect_to "/videos/#{@comment.video.id}"
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_to "/videos/#{@comment.video.id}"
    end
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(text: "This comment has been deleted.")
    redirect_to "/videos/#{@comment.video.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :reply).merge(user_id: current_user.id, video_id: params[:video_id])
  end
end
