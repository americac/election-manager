class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :lname, null: false
      t.string :fname, null: false
      t.string :netid, null: false
      t.timestamps null: false
    end
  end
end
