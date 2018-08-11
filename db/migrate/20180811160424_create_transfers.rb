# frozen_string_literal: true

class CreateTransfers < ActiveRecord::Migration[5.2]
  def change
    create_table :transfers do |t|
      t.references :player, foreign_key: true
      t.references :team, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
