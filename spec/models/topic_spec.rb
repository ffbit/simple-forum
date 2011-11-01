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

require 'spec_helper'

describe Topic do
  let(:topic) { Factory(:topic) }
  
  describe "title attribute" do
    it { should respond_to :title }
    it { should validate_presence_of :title }
  end
  
  describe "forum association" do
    it { should respond_to :forum_id }
    it { should validate_presence_of :forum_id }
    it { should belong_to :forum }
  end
  
  describe "posts association" do
    it { should have_many :posts }
  end
  
  describe "content attribute" do
    it { should validate_presence_of :content }
  end
  
  describe "user association" do
    it { should respond_to :user_id }
    it { should validate_presence_of :user_id }
    it { should belong_to :user }
  end
end
