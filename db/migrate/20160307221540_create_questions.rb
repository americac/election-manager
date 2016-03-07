class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question, null: false
      t.integer :limit, null: false, default: 1
      t.string :update_by, null: false, default: 'nobody'

      t.timestamps null: false
    end
  end
end
