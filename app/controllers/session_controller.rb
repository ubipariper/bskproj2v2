class SessionController < ApplicationController
  def new; end

  def create
    user = User.find_by(login: params[:session][:login])
    if user&.authenticate(params[:session][:password])
      flash[:notice] = 'Successful'
      log_in user
      redirect_to user
    else
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    flash[:notice] = 'Successfully signed out'
    log_out
    redirect_to root_url
  end
end
