class Like < ApplicationRecord
  belongs_to :user
  belongs_to :video
  # 1人が1つの動画に1いいね
  validates_uniqueness_of :video_id, scope: :user_id
end
