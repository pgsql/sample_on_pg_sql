class CreateMemeberShips < ActiveRecord::Migration
  def self.up
    create_table :memeber_ships do |t|
      t.integer :member_id
      t.integer :project_id

      t.timestamps
    end
  end

  def self.down
    drop_table :memeber_ships
  end
end
