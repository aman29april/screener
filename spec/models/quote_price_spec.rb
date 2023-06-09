# frozen_string_literal: true

# == Schema Information
#
# Table name: quote_prices
#
#  id              :integer          not null, primary key
#  adj_close_price :float
#  close_price     :decimal(, )
#  date            :date
#  high_price      :decimal(, )
#  low_price       :decimal(, )
#  open_price      :decimal(, )
#  price           :float
#  volume          :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  quote_id        :integer          not null
#
# Indexes
#
#  index_quote_prices_on_quote_id  (quote_id)
#
# Foreign Keys
#
#  quote_id  (quote_id => quotes.id)
#
require 'rails_helper'

RSpec.describe DailyPrice, type: :model do
  context 'validations' do
    it 'is valid with a quote_id, date and price' do
      quote = Quote.create(name: 'AAPL')
      price = DailyPrice.new(quote_id: quote.id, date: Date.today, price: 200.50)
      expect(price).to be_valid
    end

    it 'is invalid without a quote_id' do
      price = DailyPrice.new(date: Date.today, price: 200.50)
      expect(price).to_not be_valid
    end

    it 'is invalid without a date' do
      quote = Quote.create(name: 'AAPL')
      price = DailyPrice.new(quote_id: quote.id, price: 200.50)
      expect(price).to_not be_valid
    end

    it 'is invalid without a price' do
      quote = Quote.create(name: 'AAPL')
      price = DailyPrice.new(quote_id: quote.id, date: Date.today)
      expect(price).to_not be_valid
    end
  end

  context 'associations' do
    it 'belongs to a quote' do
      price = DailyPrice.reflect_on_association(:quote)
      expect(price.macro).to eq(:belongs_to)
    end
  end
end
