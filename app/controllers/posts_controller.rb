class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @blog = Blog.new(blog_params)
    if params[:back]
      render :new
    else
      if @blog.save
        redirect_to blogs_path, notice:"ブログが追加されました。"
      else
        render :new
      end
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:content)
  end

end
