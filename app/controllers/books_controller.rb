class BooksController < ApplicationController
  def new
  end

  def index
    @user = User.find (current_user.id)
  end

  def show
  end
end
