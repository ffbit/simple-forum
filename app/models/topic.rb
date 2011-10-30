# == Schema Information
#
# Table name: topics
#
#  id         :integer         not null, primary key
#  title      :string(255)     not null
#  forum_id   :integer         not null
#  created_at :datetime
#  updated_at :datetime
#

class Topic < ActiveRecord::Base
  belongs_to :forum
  has_many :posts
  
  validates  :title,    :presence => true
  validates  :forum_id, :presence => true
end
