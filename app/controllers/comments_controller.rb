class CommentsController < ApplicationController
  def index
    # how do i check if its nested?
    if params[:post_id] #then it's nested
      @comments = @post.comments 
    else
      @comments = Comment.all
    end
      
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      redirect_to comments_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.find_by(id: params[:id])
  end

  def edit
    @comment = Comment.find_by(id: params[:id])
  end

  def update
    @comment = Comment.find_by(id: params[:id])
  end

end
