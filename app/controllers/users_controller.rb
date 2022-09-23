class UsersController < ApplicationController
  def index
    @users = User.all
    @book = Book.new
    @user = User.find (current_user.id)
  end

  def show
    @books = Book.all
    @book = Book.new
    @user = User.find (params[:id])
  end

  def edit
    @user = User.find (params[:id])
    if @user == current_user
      render :edit
    else
      redirect_to :top
    end
  end

  def update
    @user = User.find (params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
