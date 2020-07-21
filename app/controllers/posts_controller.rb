class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if params[:back]
      render :new
    else
      if @post.save
        redirect_to posts_path, notice:"ブログが追加されました。"
      else
        render :new
      end
    end
  end

  def confirm
    @post = Post.new(post_params)
    render :new if @post.invalid?
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
