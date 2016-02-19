class CreateElections < ActiveRecord::Migration
  def up
    create_table :elections do |t|
	t.string :title, null: false
	t.text :description
	t.string :contact, null: false
	t.timestamps null: false
    end
  end

  def down
    drop_table :elections
  end
end
