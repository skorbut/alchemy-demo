# This migration comes from spree_api (originally 20100107141738)
class AddAPIKeyToSpreeUsers < ActiveRecord::Migration
  def change
    unless defined?(Alchemy::User)
      add_column :spree_users, :api_key, :string, :limit => 40
    end
  end
end
