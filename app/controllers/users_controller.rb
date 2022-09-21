class UsersController < ApplicationController
  def index
    @users = User.all
    @book = Book.new
    @user = User.find (current_user.id)
  end
 
  def show
    @user = User.find (params[:id])
  end

  def edit
    @post_image = @PostImage.new
  end
  
  
  private
  
  def user_params
    params.require(:user).permit(:name)
  end
end
