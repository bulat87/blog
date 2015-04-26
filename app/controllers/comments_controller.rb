class CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy]
  before_filter :authenticate_user!, :only => [:create]

  def create
    @post = Post.find(params[:post_id])
    comment = @post.comments.build(comment_params)
    comment.user = current_user

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
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:content, :post_id)
    end
end
