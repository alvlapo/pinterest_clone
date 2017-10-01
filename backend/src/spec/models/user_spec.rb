require 'rails_helper'

RSpec.describe User, type: :model do
  
  subject { described_class.new(password: 'secret', email: 'test@test.com')  }

  describe "validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a username" do
      subject.username = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a first_name"
    it "is not valid without a last_name"
    it "is not valid without a bio"
  end
end

