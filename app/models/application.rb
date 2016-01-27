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
#  interest     :integer
#

class Application < ActiveRecord::Base
  belongs_to :season

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :mobile_phone, presence: true
  validates :season, presence: true

  def self.interests_collection
    {
      0 => 'Osnovni',
      1 => 'Osnovni + Digitalni',
      2 => 'Osnovni + Analogni',
      3 => 'Osnovni + Analogni + Digitalni',
      4 => 'Ne znam još :('
    }
  end

  def interest_string
    self.class.interests_collection[interest]
  end
end
