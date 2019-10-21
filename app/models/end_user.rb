class EndUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

      attachment :end_user_image



      has_many :events

      has_many :entries

      has_many :favevents, through: :entries, source: :event
      has_many :reviews, dependent: :destroy
      has_many :comments


	def email_required?
		false
	end
	
	def email_changed?
		false
	end

	def like(_event)

	end


end
