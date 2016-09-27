class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

# def create_post_page
#
# end

def new

end

def show
    @post = Post.find(params[:id])
  end

def create
    render text: params[:post].inspect
  end

  # def post_page
  #   if params[:id]
  #     @post = Post.where('id = ?', params[:id])
  #   end
  # end

end
