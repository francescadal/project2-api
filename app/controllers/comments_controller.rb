class CommentsController < ApplicationController
  def index
    @comments = Comment.all

    render json: @comments
  end

  def new
    @comment = Comment.new

    render json: @comments
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: nil, status: :created
    else
      render json: nil, status: :internal_server_error
    end
  end

    def show
    @comment = Comment.find(params[:id])

    render json: @comments
  end

  private
    def comment_params
      params.require(:comment).permit(:content)
    end
end
