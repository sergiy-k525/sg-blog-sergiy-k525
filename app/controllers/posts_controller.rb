class PostsController < ApplicationController
  before_filter :find_post, only: [:edit, :show, :update, :destroy]

  def index
    @posts = Post.latest_five
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save ? redirect_to(@post) : render(:new)
  end

  def edit
  end

  def show
    @comment = Comment.new
  end

  def update
    @post.update_attributes!(post_params) ? redirect_to(@post) : render(:edit)
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :image)
  end
end
