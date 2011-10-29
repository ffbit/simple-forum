# == Schema Information
#
# Table name: forums
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  category_id :integer         not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Forum < ActiveRecord::Base
end
