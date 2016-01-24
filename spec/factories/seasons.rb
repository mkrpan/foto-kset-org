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

FactoryGirl.define do
  factory :season do
    title "MyString"
start_date "2016-01-24 17:37:59"
end_time "2016-01-24 17:37:59"
type 1
  end

end
