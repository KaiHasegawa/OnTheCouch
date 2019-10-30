class Review < ApplicationRecord
  belongs_to :end_user
  belongs_to :item
  has_many :comments

  validates :body, length: { maximum:155 }
end
