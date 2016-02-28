class AddUpdateToElection < ActiveRecord::Migration
  def change
    add_column :elections, :update_id, :integer, null: false
    ## update_id used to keep track of who updated the election
    add_foreign_key :elections, :users, column: :update_id
  end
end
