# == Schema Information
#
# Table name: categories
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Category do
  let(:category) { Factory(:category) }
  
  describe "title attribute" do
    it { should respond_to :title }
    it { should validate_presence_of :title }
#    it { category.should validate_length_of(:password, :within => 0..255) }
    it { should validate_uniqueness_of :title }
  end
end
