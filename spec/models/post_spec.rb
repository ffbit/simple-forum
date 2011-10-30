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

require 'spec_helper'

describe Post do
  let(:post) { Factory :post }
  
  describe "content attribute" do
    it { should respond_to :content }
    it { should validate_presence_of :content }
  end
  
  describe "topic association" do
    it { should respond_to :topic_id }
    it { should validate_presence_of :topic_id }
    it { should belong_to :topic}
  end
  
  describe "user association" do
    it { should respond_to :user_id }
    it { should validate_presence_of :user_id }
    it { should belong_to :user }
  end
  
end
