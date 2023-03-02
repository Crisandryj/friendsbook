class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    p 'ty'
    @like = current_user.likes.create(like_params)
    if @like.save
      redirect_to @like
    else
      render new, status: unprocessable_entity
    end
  end

private

def like_params
  params.permit(:liked)
end

end
