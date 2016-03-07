class AddElectionForeignKeyToQuestions < ActiveRecord::Migration
  def change
    add_reference :questions, :election, null: false, index: true, foreign_key: true
  end
end
