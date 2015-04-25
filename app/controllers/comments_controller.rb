class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def create
    @post = Post.find_by(params[:posy_id])
    comment = @post.comments.build(comment_params)

    if comment.save
      redirect_to post_path(@post)
    else
      redirect_to post_path(@post)
    end
  end

  def destroy
    @post = @comment.post
    @comment.delete
    redirect_to post_path(@post)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:content, :post_id, :user_id)
    end
end
