# frozen_string_literal: true

class CreateConfigs < ActiveRecord::Migration[7.0]
  def change
    create_table :configs, id: :uuid do |t|
      t.string :key
      t.string :value
      t.boolean :is_public, default: false
      t.timestamps
    end
  end
end
