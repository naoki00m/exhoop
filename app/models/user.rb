class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, uniqueness: true
  has_many :videos, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_videos, through: :likes, source: :video
  has_many :comments, dependent: :destroy
  # いいねしているかどうか判定
  def already_liked?(video)
    self.likes.exists?(video_id: video.id)
  end

  validates :name, length: { maximum: 20 }
  validates :profile, length: { maximum: 200 }
  mount_uploader :image, ImageUploader
end
