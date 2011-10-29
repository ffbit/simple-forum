# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  forum_id   :integer         not null
#  user_id    :integer         not null
#  content    :text            not null
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Post do
  let(:forum) { Factory :forum }
  
  describe "content attribute" do
    it { should respond_to :content }
    it { should validate_presence_of :content }
  end
  
  describe "forum attribute" do
    it { should respond_to :forum_id }
    it { should validate_presence_of :forum_id }
    it { should respond_to :forum }
  end
  
  describe "user attribute" do
    it { should respond_to :user_id }
    it { should validate_presence_of :user_id }
    it { should belong_to :user }
  end
  
end
