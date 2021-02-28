class CatsController < ApplicationController
  def new
    @cat = Cat.new
  end

  def index
    @cats = Cat.all.includes(:user)
  end

  def create

    @cat = current_user.cats.build(cat_params)
    if @cat.save
      flash[:notice] = 'ネコ情報の登録に成功しました！！'
      redirect_to cats_path
    else
      flash[:danger] = 'ネコ情報の登録に失敗しました。。'
      render new_cat_path
    end
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
    redirect_to cats_path
  end
  private

  def cat_params
    params.require(:cat).permit(:name, :age, :sex, :cat_img)
  end
end
