class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all.order(id: "DESC") 
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(params.require(:tweet).permit(:name, :image, :text))
    # require(:tweet) -> paramsの中にある「viewファイルに入力された情報のハッシュ」のみアプリケーション側で取得する
    # permit(:name, :image, :text) -> データベースに保存を許容するカラムを指定
  end
  
end
