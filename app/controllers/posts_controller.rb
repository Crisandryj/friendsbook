class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def index
    @like = Like.new
    @posts = Post.all
  end

  def create
    @user = current_user
    @post = @user.posts.create(post_params)
    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:body)
  end


end
