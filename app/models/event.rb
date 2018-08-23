class Event < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy
  has_many :users, through: :requests

  validates_presence_of :user_id, :date, :location, :description, :category, :group_size, :name, :group_bio, :group_photo
  validates :description, length: { minimum: 20 }
  validates :category, inclusion: { in: %w[drinking sports games outdoors cinema online] }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
