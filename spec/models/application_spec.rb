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

require 'rails_helper'

RSpec.describe Application, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
