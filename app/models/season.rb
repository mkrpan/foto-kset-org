# == Schema Information
#
# Table name: seasons
#
#  id         :integer          not null, primary key
#  title      :string           default(""), not null
#  start_date :datetime         not null
#  end_date   :datetime         not null
#  type       :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Season < ActiveRecord::Base
  self.inheritance_column = :_type_disabled

  enum type: [:course, :workshop]
  has_many :applications

  validates :title, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :type, presence: true
  validate :end_time_is_after_start_time

  scope :for_time, lambda { |time|
    where('start_date <= :time AND end_date >= :time', time: time)
  }

  def end_time_is_after_start_time
    return if end_date.blank? || start_date.blank?
    return unless end_date < start_date

    errors.add(:end_date, 'cannot be before the start time')
  end
end
