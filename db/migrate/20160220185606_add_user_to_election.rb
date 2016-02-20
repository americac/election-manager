class AddUserToElection < ActiveRecord::Migration
  def change
    add_reference :elections, :user, null: false, index: true, foreign_key: true
#    add_foreign_key :elections, :users
  end
end
