# This migration comes from spree_api (originally 20131017162334)
class AddIndexToUserSpreeAPIKey < ActiveRecord::Migration
  def change
    unless defined?(Alchemy::User)
      add_index :spree_users, :spree_api_key
    end
  end
end
