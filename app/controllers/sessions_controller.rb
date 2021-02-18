class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      remember user
      flash[:success] = "ログインに成功しました"
      redirect_to user
    else
      flash.now[:danger] = 'Eメールとパスワードの組み合わせが無効です'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
