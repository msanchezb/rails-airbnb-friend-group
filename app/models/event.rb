class Event < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy
  has_many :users, through: :requests

  mount_uploader :group_photo, PhotoUploader

  validates_presence_of :user_id, :date, :location, :description, :category, :group_size, :name, :group_bio, :group_photo
  validates :description, length: { minimum: 20 }
  validates :category, inclusion: { in: %w[drinking sports games outdoors cinema online] }

end
