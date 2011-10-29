# == Schema Information
#
# Table name: users
#
#  id                     :integer         not null, primary key
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(128)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  password_salt          :string(255)
#  locked_at              :datetime
#  admin                  :boolean
#  created_at             :datetime
#  updated_at             :datetime
#

require 'spec_helper'

describe User do
  let(:user) { Factory(:user) }
  
  describe "email attribute" do
    it { should validate_presence_of :email }
    it { should allow_value("good@email.com").for(:email) }
    it { should_not allow_value("bad-email@}").for(:email) }
    it { should validate_uniqueness_of :email }
  end
  
  describe "password attributes" do
    it { should validate_presence_of :password }
    it { should validate_confirmation_of :password }
#    it { user.should validate_length_of(:password, :within => 6..128) }
    it { :encrypted_password.should_not be_blank }
  end
  
  describe "admin attribute" do
    it { should respond_to(:admin) }
  end
  
  context "when a regular user has been created" do
    it { user.should_not be_admin }
  end
  
  context "when an admin user has been made from an existing regular one" do
    before :each do
      user.toggle!(:admin)
      user.save!
    end
    
    it { user.should be_admin }
  end
end
