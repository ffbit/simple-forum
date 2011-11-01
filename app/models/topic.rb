# == Schema Information
#
# Table name: topics
#
#  id         :integer         not null, primary key
#  title      :string(255)     not null
#  forum_id   :integer         not null
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer         default(0), not null
#

class Topic < ActiveRecord::Base
  belongs_to :forum
  belongs_to :user
  has_many   :posts
  
  attr_accessor :content
  
  validates  :title,    :presence => true
  validates  :forum_id, :presence => true
  validates  :content,  :presence => true, :if => :new_record?
  validates  :user_id,  :presence => true
end
