class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :lname
      t.string :fname
      t.string :netid
      t.timestamps null: false
    end
  end
end
