# frozen_string_literal: true

class CreateSports < ActiveRecord::Migration[5.2]
  def change
    create_table :sports do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
  end
end
