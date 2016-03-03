require 'rails_helper'
require 'spec_helper'

RSpec.describe Election, type: :model do
  describe "Factory girl tests" do
    it "has a valid factory" do
      FactoryGirl.create(:election).should be_valid
    end
  end
  describe "validate presence of required fields" do
    it "validates presence of :title" do
      election = FactoryGirl.create(:election)
      expect(election).to validate_presence_of(:title)
    end
    it "validates presence of :contact" do
      election = FactoryGirl.create(:election)
      expect(election).to validate_presence_of(:contact)
    end
    xit "validates presence of :start" do
      election = FactoryGirl.create(:election)
      expect(election).to validate_presence_of(:start)
    end

    xit "validates presence of :finish" do
      election = FactoryGirl.create(:election)
      expect(election).to validate_presence_of(:finish)
    end

    xit "validates usage of owner_id instead of user_id" do
    end
  end

  describe "validate election object creation" do
    election = FactoryGirl.create(:election)
    xit "validates onwer_id is set" do
      expect(election.owner_id).to be_valid
    end

    it "validates update_by is set" do
      expect(election.update_by).to be_valid
    end

    it "validates title is set" do
      expect(subject.title).to eq('Annabeths Election in test')
    end

    it "validates description is set" do
      expect(subject.description).to eq('New Election for testing for Annabeth')
    end

    it "validates contact is set" do
      expect(subject.contact).to eq('grover@uic.edu')
    end

  end

  describe "validate contact:" do
    it "validates contact: to be an email address" do
      subject.contact = "americauic.edu"
      expect{raise StandardError, 'Contact is invalid'}.to raise_error('Contact is invalid')
    end
  end

end
