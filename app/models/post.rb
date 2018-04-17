class Post < ApplicationRecord
  validates :text, presence: true, length: {maximum:100}
  validates :picture, presence: true
  belongs_to :user
  mount_uploader :picture, PictureUploader
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  
end
