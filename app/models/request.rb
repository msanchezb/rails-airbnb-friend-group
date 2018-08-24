class Request < ApplicationRecord
  belongs_to :user
  belongs_to :event

  # validates :message, presence: true
  validates :status, inclusion: { in: %w[pending accepted rejected] }
end
