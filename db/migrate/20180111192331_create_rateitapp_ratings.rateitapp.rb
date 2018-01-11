# This migration comes from rateitapp (originally 20160614154743)
# frozen_string_literal: true

class CreateRateitappRatings < ActiveRecord::Migration
  def change
    create_table :rateitapp_ratings do |t|
      t.integer :value
      t.string :ratable_type
      t.string :ratable_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
