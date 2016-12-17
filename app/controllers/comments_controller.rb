class CommentsController < ApplicationController
  before_action :set_comment, only: [:update, :show, :destroy, :edit]

  def index
    @comments = Comment.all.order('created_at DESC')
  end

  def new
    @comment = Comment.new
  end

  def show
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to @comment
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to @comment
    else
      render 'edit'
    end
  end

  def destroy
    @comment.destroy
    redirect_to root_path
  end

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:title, :body)
  end
end
