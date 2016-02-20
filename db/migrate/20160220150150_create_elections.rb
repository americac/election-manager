class CreateElections < ActiveRecord::Migration
  def change
    create_table :elections do |t|
      t.string :title
      t.text :description
      t.string :contact

      t.timestamps null: false
    end
  end
end
