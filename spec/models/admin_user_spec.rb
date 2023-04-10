# frozen_string_literal: true

# spec/models/admin_user_spec.rb

require 'rails_helper'

RSpec.describe AdminUser, type: :model do
  subject { FactoryBot.build(:admin_user) }

  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should allow_value('admin@example.com').for(:email) }
    it { should_not allow_value('invalid_email').for(:email) }
    it { should validate_presence_of(:password) }
    it { should validate_length_of(:password).is_at_least(6) }
  end

  describe 'associations' do
    # no associations for AdminUser
  end
end
