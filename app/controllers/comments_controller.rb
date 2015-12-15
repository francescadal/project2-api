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
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :internal_server_error
    end
  end

  def show
    @comment = Comment.find(params[:id])

    render json: @comments
  end


  def destroy
    @comment = Comment.find(params[:id])

    @comment.destroy
  end

  private
    def comment_params
      params.require(:comment).permit(:content)
    end
end
