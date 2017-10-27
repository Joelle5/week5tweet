class PostController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.new(get_params)
    @posts = @list.tasks.all
    if @post.save
      redirect_to home_path
    else
      render :home_path
    end
  end


private
  def post_params
    params.require(:post).permit(:content)
end
