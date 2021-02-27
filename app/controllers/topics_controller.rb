class TopicsController < ApplicationController
  def index
    @q = Topic.ransack(params[:q])
    @topics = @q.result(distinct: true).includes(:user).page(params[:page]).per(4)
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = current_user.topics.build(topic_params)
    if @topic.save
      flash[:notice] = "投稿に成功しました！！"
      redirect_to topics_path
    else
      flash[:danger] = "投稿に失敗しました。。"
      render new_topic_path
    end
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_path
  end

  private

  def topic_params
    params.require(:topic).permit(:title, :body, :image)
  end
end
