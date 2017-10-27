class PagesController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def home
  end

  def profile
    if params[:id].present?
      @username = params[:id]
    else
      render :index
    end
  end

  def explore
  end

private

end
