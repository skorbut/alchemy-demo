# This migration comes from spree_api (originally 20120530054546)
class RenameAPIKeyToSpreeAPIKey < ActiveRecord::Migration
  def change
    unless defined?(Alchemy::User)
      rename_column :spree_users, :api_key, :spree_api_key
    end
  end
end
