class Member < ActiveRecord::Base
  belongs_to :company
end

# == Schema Information
#
# Table name: members
#
#  id              :integer         not null, primary key
#  name            :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  main_compnay_id :integer
#

