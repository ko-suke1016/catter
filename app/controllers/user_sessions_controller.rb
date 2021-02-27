class UserSessionsController < ApplicationController
  def new
  end

  def create
    @user = login(params[:email], params[:password])
    if @user
      flash[:notice] = "ログインに成功しました！"
      redirect_to topics_path
    else
      flash[:danger] = "ログインに失敗しました。。"
      redirect_to login_path
    end
  end

  def destroy
  end

end
