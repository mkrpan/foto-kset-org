# == Schema Information
#
# Table name: applications
#
#  id           :integer          not null, primary key
#  first_name   :string           default(""), not null
#  last_name    :string           default(""), not null
#  email        :string           default(""), not null
#  mobile_phone :string           default(""), not null
#  meta         :text
#  season_id    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Application < ActiveRecord::Base
  belongs_to :season

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :mobile_phone, presence: true
  validates :season, presence: true
end
