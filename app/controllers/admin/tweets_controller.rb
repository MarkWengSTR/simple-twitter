class Admin::TweetsController < Admin::BaseController
  def index
    @tweets = Tweet.page(params[:page]).per(10)
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to admin_root_path
    flash[:notice] = "刪除一筆Tweet"
  end

end
