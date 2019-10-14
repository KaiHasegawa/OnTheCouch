class Event < ApplicationRecord
  # belongs_to :end_user

  # validates :content, presence: true, length: { maximum:255 }
  attachment :event_image

  has_many :entries, foreign_key: 'event_id', dependent: :destroy

  has_many :end_users, through: :entries
end
