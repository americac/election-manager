class AddStartToElection < ActiveRecord::Migration
  def change
    add_column :elections, :start, :datetime, null: false
  end
end
