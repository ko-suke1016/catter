class ContentsController < ApplicationController
  def index
    @contents = Content.all.includes(:cat)
  end

  def new
    @content = Content.new
  end

  def show
    @content = Content.find(params[:id])
  end

  def create
    @content = Content.new(content_params)
    if @content.save
      flash[:notice] = '日記の投稿に成功したにゃ♪'
      redirect_to contents_path
    else
      flash[:danger] = '日記の投稿に失敗したにゃ。。'
      render new_content_path
    end
  end

  def update
  end

  def destroy
  end

  private

  def content_params
    params.require(:content).permit(:title, :unp, :weight, :body, :eat, :content_img)
  end

end
