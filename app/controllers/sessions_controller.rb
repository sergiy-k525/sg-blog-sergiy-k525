class SessionsController < ApplicationController
  def new
    end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
    #   if  current_page?(post_path(@post.id))
    #   redirect_to(post_path(@post.id))
    # else
      redirect_to root_path

    else
      flash.now[:error] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
