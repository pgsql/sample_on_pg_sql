class AddMainCompanyIdToMembers < ActiveRecord::Migration
  def self.up
    add_column :members, :main_compnay_id, :integer
  end

  def self.down
    remove_column :members, :main_compnay_id
  end
end
