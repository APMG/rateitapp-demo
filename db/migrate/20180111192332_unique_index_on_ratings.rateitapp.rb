# This migration comes from rateitapp (originally 20160614214905)
# frozen_string_literal: true

class UniqueIndexOnRatings < ActiveRecord::Migration[4.2]
  def change
    add_index :rateitapp_ratings, %i[user_id ratable_type ratable_id], unique: true, name: 'primary_composite_key_index'
  end
end
