class Vehicle < ActiveRecord::Base
  belongs_to :company, :foreign_key => "main_company_id"
end

# == Schema Information
#
# Table name: vehicles
#
#  id              :integer         not null, primary key
#  main_company_id :integer
#  year            :date
#  make            :string(255)
#  model           :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

