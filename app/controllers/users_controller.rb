class UsersController < ApplicationController
  def new
    # Provide the model instance to the form_for helper
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have successfully signed up!"
      redirect_to dogs_path
    else
      render :new
    end
  end


  private

   
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end