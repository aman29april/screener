# frozen_string_literal: true

class CreateExchanges < ActiveRecord::Migration[7.0]
  def change
    create_table :exchanges do |t|
      t.string :name
      t.string :full_name
      t.string :symbol
      t.string :country
      t.string :currency

      t.timestamps
    end
  end
end
