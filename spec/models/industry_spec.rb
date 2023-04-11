# == Schema Information
#
# Table name: industries
#
#  id          :integer          not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  sector_id   :integer          not null
#
# Indexes
#
#  index_industries_on_sector_id  (sector_id)
#
# Foreign Keys
#
#  sector_id  (sector_id => sectors.id)
#
require 'rails_helper'

RSpec.describe Industry, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end