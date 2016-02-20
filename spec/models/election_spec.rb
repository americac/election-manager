require 'rails_helper'

RSpec.describe Election, type: :model do
  describe "validate presence of required fields" do
    it "validates presence of :title" do
	expect(subject).to validate_presence_of(:title)
    end
    it "validates presence of :contact" do
	expect(subject).to validate_presence_of(:contact)
    end
    xit "validates presence of :start" do
      expect(subject).to validate_presence_of(:start)
    end

    xit "validates presence of :finish" do
       expect(subject).to validate_presence_of(:finish)
    end
  end

  describe "validate :contact" do
    xit "validates :contact to be an email address" do
      subject.contact = "americauic.edu"
      expect{raise StandardError, 'Contact is invalid'}.to raise_error('Contact is invalid')
    end
  end

end
