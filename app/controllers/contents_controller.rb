class ContentsController < ApplicationController
  def index
    @cat = Cat.find(params[:cat_id])
    @contents = @cat.contents.all
  end

  def new
    @cat = Cat.find(params[:cat_id])
    @content = @cat.contents.new
  end

  def show
    @cat = Cat.find(params[:cat_id])
    @content = @cat.contents.find(params[:id])
  end

  def create
    @cat = Cat.find(params[:cat_id])
    @content = @cat.contents.build(content_params)
    @content.user_id = current_user.id
    if @content.save
      flash[:notice] = '日記の投稿に成功したにゃ♪'
      redirect_to cat_contents_path(@cat)
    else
      flash[:danger] = '日記の投稿に失敗したにゃ。。'
      redirect_to new_cat_content_path(@cat)
    end
  end

  def update
  end

  def destroy
  end

  private

  def content_params
    params.require(:content).permit(:title, :unp, :weight, :body, :eat, :content_img, :start_time)
  end

end
