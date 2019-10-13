class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable
  private
  def confirmation_period_valid?
    return true
  end

  # Setup accessible (or protected) attributes for your model
  # attr_accessible :title, :body
end
