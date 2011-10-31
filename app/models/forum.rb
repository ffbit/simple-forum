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
  has_many   :topics
  belongs_to :category
  
  validates :title,       :presence => true
  validates :category_id, :presence => true
  # Why it doesn't work?
  validates_uniqueness_of :title, :scope => :category_id
end
