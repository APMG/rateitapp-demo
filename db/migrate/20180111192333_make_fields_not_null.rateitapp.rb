# This migration comes from rateitapp (originally 20160614215245)
# frozen_string_literal: true

class MakeFieldsNotNull < ActiveRecord::Migration[4.2]
  def change
    change_column_null :rateitapp_ratings, :value, false
    change_column_null :rateitapp_ratings, :ratable_type, false
    change_column_null :rateitapp_ratings, :ratable_id, false
    change_column_null :rateitapp_ratings, :user_id, false
  end
end
