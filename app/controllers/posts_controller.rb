class PostsController < ApplicationController


  def new
    @post = Post.new
  end


  def index
    @posts = Post.all
  end


  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end


end
