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

require 'spec_helper'

describe Forum do
  let(:forum) { Factory(:forum) }
  
  describe "title attribute" do
    it { should respond_to :title }
    it { should validate_presence_of :title }
    it { should validate_uniqueness_of :category_id }
  end
  
  describe "topics association" do
    it { should have_many :topics }
  end
  
  describe "category association" do
    it { should respond_to :category_id }
    it { should validate_presence_of :category_id }
    it { should belong_to :category }
  end
end
