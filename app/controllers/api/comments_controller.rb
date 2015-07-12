class Api::CommentsController < Web::ApplicationController
  def index
    @comments = Comment.all
  end
end
