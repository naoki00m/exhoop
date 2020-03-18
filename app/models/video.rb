class Video < ApplicationRecord
  validates :name, :work, presence: true
  belongs_to :user

  mount_uploader :work, VideoUploader
end