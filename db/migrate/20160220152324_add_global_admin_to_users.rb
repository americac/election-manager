class AddGlobalAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :global_admin, :boolean, default: 0
  end
end
