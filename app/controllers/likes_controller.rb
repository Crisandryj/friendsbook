class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @like = Like.create(like_params)
    if @like.save
      p like_params
      redirect_to @like
    else
      render :new, status: :unprocessable_entity
    end
  end

private

def like_params
  params.require(:like).permit(:liked, :likeable_type, :likeable_id)
end

end
