class Event < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy
  has_many :users, through: :requests


  validates_presence_of :user_id, :date, :location, :description, :category, :group_size, :name
  validates :description, length: { minimum: 20 }
  validates :category, inclusion: { in: %w[drinking sports cinema theatre museum outdoors] }
end
