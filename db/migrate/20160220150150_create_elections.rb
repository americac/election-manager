class CreateElections < ActiveRecord::Migration
  def change
    create_table :elections do |t|
      t.string :title, null: false
      t.text :description
      t.string :contact, null: false

      t.timestamps null: false
    end
  end
end
