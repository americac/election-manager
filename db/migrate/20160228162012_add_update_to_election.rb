class AddUpdateToElection < ActiveRecord::Migration
  def change
    add_column :elections, :update_by, :string, null: false
  end
end
