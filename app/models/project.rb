class Project < ActiveRecord::Base
  has_many :companies, :through => :member_ships
end



# == Schema Information
#
# Table name: projects
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  company_id :integer
#  created_at :datetime
#  updated_at :datetime
#

