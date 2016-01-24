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

FactoryGirl.define do
  factory :application do
    first_name "MyString"
last_name "MyString"
email "MyString"
mobile_phone "MyString"
meta "MyText"
  end

end
