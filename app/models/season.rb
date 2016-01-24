# == Schema Information
#
# Table name: seasons
#
#  id         :integer          not null, primary key
#  title      :string           default(""), not null
#  start_date :datetime         not null
#  end_time   :datetime         not null
#  type       :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Season < ActiveRecord::Base
  self.inheritance_column = :_type_disabled

  enum type: [:course, :workshop]

  validates :title, presence: true
  validates :start_date, presence: true
  validates :end_time, presence: true
  validates :type, presence: true
  validate :end_time_is_after_start_time

  def end_time_is_after_start_time
    return if end_time.blank? || start_time.blank?
    return unless end_time < start_time

    errors.add(:end_time, 'cannot be before the start time')
  end
end
