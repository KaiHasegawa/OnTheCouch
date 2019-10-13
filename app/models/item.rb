class Item < ApplicationRecord
	acts_as_taggable_on :actors
	acts_as_taggable_on :genres
	acts_as_taggable
	attachment :image

end
