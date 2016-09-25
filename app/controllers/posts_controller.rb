class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def post_page
    if params[:id]
      @post = Post.where('id = ?', params[:id])
    end
  end
end
