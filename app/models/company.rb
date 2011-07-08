class Company < ActiveRecord::Base
  has_many :projects, :through => :member_ships
  has_many :members
  has_many :vehicles , :foreign_key => "main_company_id"
end

# == Schema Information
#
# Table name: companies
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  schema_name :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

