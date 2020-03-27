class Video < ApplicationRecord
  validates :name, :work, presence: true
  validates :name, length: { maximum: 20 }
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  belongs_to :tag

  mount_uploader :work, VideoUploader
end