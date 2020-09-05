class Tweet < ApplicationRecord
  # 投稿内容（文字）が空のツイートはデータベースに保存できないように制約をかける
  validates :text, presence: true
end
