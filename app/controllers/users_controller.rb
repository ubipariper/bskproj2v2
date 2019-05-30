class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    parameters = user_params
    parameters['role_id'] = 6
    @user = User.new(parameters)
    if @user.save
      log_in @user
      flash[:success] = 'Your account was created successfully'
      redirect_to @user
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:login, :name, :password,
                                 :password_confirmation)
  end
end
