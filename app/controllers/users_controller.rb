class UsersController < ApplicationController

    def index
      @friendship = Friendship.new
      @users = User.all
    end

    def new
      @user = User.new
    end


    def create
      @user = User.create(user_params)
      if @user.save
        redirect_to @user
      else
        render :new, status: :unprocessable_entity
      end
    end

    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      if @user.save
        redirect_to @user
      else
        render :new, status: :unprocessable_entity
      end
    end

    def show
      @user = User.find(params[:id])
    end

  private

    def user_params
      params.require(:user).permit()
    end

end
