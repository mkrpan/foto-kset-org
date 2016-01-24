class Season < ActiveRecord::Base
  self.inheritance_column = :_type_disabled

  enum type: [:course, :workshop]

  validates :title, presence: true
  validates :start_date, present: true
  validates :end_time, presence: true
  validates :type, presence: true
  validate :end_time_is_after_start_time

  def end_time_is_after_start_time
    return if end_time.blank? || start_time.blank?
    return unless end_time < start_time

    errors.add(:end_time, 'cannot be before the start time')
  end
end
