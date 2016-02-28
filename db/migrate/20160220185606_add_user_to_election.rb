class AddUserToElection < ActiveRecord::Migration
  def change
  	#this creates a user_id in the elections table, used to keep track of owner of the election
    add_reference :elections, :user, null: false, index: true, foreign_key: true
#    add_foreign_key :elections, :users
  end
end
