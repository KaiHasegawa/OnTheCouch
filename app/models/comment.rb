class Comment < ApplicationRecord
  belongs_to :end_user
  belongs_to :review

  validates :content, length: { maximum:355 }

end
