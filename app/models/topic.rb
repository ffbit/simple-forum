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
  
  attr_accessor :content
  
  validates  :title,    :presence => true
  validates  :forum_id, :presence => true
  validates  :content, :presence => true, :if => :new_record?
end
