require 'rails_helper'
require 'pry'

RSpec.describe Contact, type: :model do
  let(:valid_email) { "user@example.com" }
  let(:invalid_email) { "invalid_email_format" }
  let(:email_regex) { /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before(:all) do
    @contact = build(:contact)
  end

  describe 'Association' do
    it 'should have many emails' do
      should have_many(:emails)
    end
  end

  describe 'Validation' do
      it 'Emails should be unique' do
        should validate_uniqueness_of(:email)
      end
  end

  describe 'Record' do
    it 'has a valid factory' do
      expect(@contact).to be_valid
    end

    it 'email is valid' do
      expect(!!@contact.email.scan(email_regex)).to be_truthy
    end

    it "is invalid with an improperly formatted email" do
      invalid_contact = build(:contact, email: invalid_email)
      expect(invalid_contact).not_to be_valid
    end
  end

end
