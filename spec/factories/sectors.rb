# frozen_string_literal: true

# == Schema Information
#
# Table name: sectors
#
#  id          :integer          not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :sector do
    name { 'MyString' }
    description { 'MyText' }
  end
end
