class Application < ActiveRecord::Base
  belongs_to :season

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :mobile_phone, presence: true
  validates :season, presence: true
end
