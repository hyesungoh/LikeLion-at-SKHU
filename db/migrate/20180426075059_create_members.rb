class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.integer :term
      t.integer :istutor
      
      t.timestamps null: false
    end
  end
end
