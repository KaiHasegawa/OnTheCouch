class Item < ApplicationRecord
	acts_as_taggable_on :actors
	acts_as_taggable_on :genres
	acts_as_taggable
	attachment :image

	has_many :reviews, foreign_key: 'item_id', dependent: :destroy

  def reviewed_by?(end_user)
   reviews.where(end_user_id: end_user.id).exists?
  end
end
