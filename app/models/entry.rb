class Entry < ApplicationRecord
  belongs_to :end_user
  belongs_to :event
end
