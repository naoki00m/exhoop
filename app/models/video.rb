class Video < ApplicationRecord
  validates :name, :work, presence: true
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  mount_uploader :work, VideoUploader
end