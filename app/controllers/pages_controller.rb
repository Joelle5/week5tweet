class PagesController < ApplicationController
  def index
  end

  def home
  end

  def profile
      @username = params[:id]
      @posts = Post.all
  end

  def explore
  end

private
def params
end
end
