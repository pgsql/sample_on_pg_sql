class CreateVehicles < ActiveRecord::Migration
  def self.up
    create_table :vehicles do |t|
      t.integer :main_company_id
      t.date :year
      t.string :make
      t.string :model

      t.timestamps
    end
  end

  def self.down
    drop_table :vehicles
  end
end
