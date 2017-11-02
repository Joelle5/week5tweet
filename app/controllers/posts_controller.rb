class PostsController < BaseController

  def index
    @posts = current_user.posts.order(id: :desc)
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
  end

  def new
    @post = current_user.posts.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      @post = Post.new
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
  @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @posts = Post.all
    @post = prep_post
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_path }
      format.js
    end
  end
private

def prep_post
  Post.find(params[:id])
end
def post_params
  params.require(:post).permit(:content)

end

end
