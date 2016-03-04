class AddFinishToElection < ActiveRecord::Migration
  def change
    add_column :elections, :finish, :datetime, null: false
  end
end
