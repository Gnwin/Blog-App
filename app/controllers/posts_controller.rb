class PostsController < ApplicationController
  before_action :redirect_if_not_logged_in

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  private
  
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
