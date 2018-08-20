class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :requests
  # Events that the user created
  has_many :events
  # Events that the user requested to join
  has_many :events, through: :requests


  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true
  validates :name, presence: true
  validates :user_bio, presence: true, length: { minimum: 20 }
  validates :user_photo, presence: true
end
