class CreatePorts < ActiveRecord::Migration
  def change
    create_table :ports do |t|

      t.timestamps null: false
    end
  end
end
