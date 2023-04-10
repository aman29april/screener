# frozen_string_literal: true

class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :quote, null: false, foreign_key: true
      t.string :comment

      t.timestamps
    end
  end
end
