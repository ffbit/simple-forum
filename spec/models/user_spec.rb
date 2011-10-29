require 'spec_helper'

describe User do
  let(:user) { Factory(:user) }
  
  describe "email attribute" do
    it { should validate_presence_of :email }
    it { should allow_value("good@email.com").for(:email) }
    it { should_not allow_value("bad-email@}").for(:email) }
    it { should validate_uniqueness_of :email }
  end
  
  describe "password" do
    it { should validate_presence_of :password }
    it { should validate_confirmation_of :password }
  end
end
