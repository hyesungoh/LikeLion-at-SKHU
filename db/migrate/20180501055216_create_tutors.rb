class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :name
      t.integer :term
      t.integer :learning_term
      
      t.timestamps null: false
    end
  end
end
