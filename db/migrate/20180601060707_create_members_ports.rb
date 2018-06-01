class CreateMembersPorts < ActiveRecord::Migration
  def change
    create_table :members_ports do |t|
      t.integer :member_id
      t.integer :port_id
      
    end
  end
end
