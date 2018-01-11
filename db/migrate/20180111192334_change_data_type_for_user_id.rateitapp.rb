# This migration comes from rateitapp (originally 20160620183622)
# frozen_string_literal: true

class ChangeDataTypeForUserId < ActiveRecord::Migration
  def change
    change_column :rateitapp_ratings, :user_id, :string
  end
end
