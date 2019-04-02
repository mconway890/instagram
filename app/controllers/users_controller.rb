class UsersController < ApplicationController
  def show
  end

  def edit
  end

  def update
    current_user.update(params[:user])
    redirect_to current_user
  end

  private

  def user_params
    params.require(:user).permit(:username, :name, :website, :bio, :email, :phone, :gender)
  end
end
