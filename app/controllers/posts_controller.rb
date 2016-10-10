class PostsController < ApplicationController
  before_filter :find_post, only: [:edit, :show, :update, :destroy]

  def index
    @posts = Post.latest_five
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def create
    @post = Post.create(params[:posts])
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end
end
