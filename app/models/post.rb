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
  belongs_to :topic
  belongs_to :user
  
  validates :content,  :presence => true
  validates :topic_id, :presence => true
  validates :user_id,  :presence => true
  
  self.per_page = 10
end
