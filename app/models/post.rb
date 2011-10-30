# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  user_id    :integer         not null
#  content    :text            not null
#  created_at :datetime
#  updated_at :datetime
#  topic_id   :integer         default(0), not null
#

class Post < ActiveRecord::Base
  belongs_to :forum
  belongs_to :user
  
  validates :content,  :presence => true
  validates :forum_id, :presence => true
  validates :user_id,  :presence => true
end
