class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    respond_to do |format|
      if @comment.save
        format.html { redirect_to issue_path(@comment.issue), notice: "Your comment was posted" }
      else
        format.html 
      end
    end

  end


  private

  def comment_params
    params.require(:comment).permit(:body, :issue_id)
  end
end
