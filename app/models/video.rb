class Video < ApplicationRecord
  validates :name, :work, presence: true
  validates :name, length: { maximum: 20 }

  belongs_to :user
  belongs_to :tag
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  has_many :comments, dependent: :destroy

  def self.search(search)
    if search
      Video.where('name LIKE(?)', "%#{search}%")
    else
      Video.all
    end
  end

  mount_uploader :work, WorkUploader
end