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

require 'rails_helper'

RSpec.describe Season, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
