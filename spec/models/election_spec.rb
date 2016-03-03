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

    xit "validates usage of owner_id instead of user_id" do
    end
  end

  describe "validate election object creation" do
    subject {
      Election.create(
	user_id: 2,
	update_by: 'pjackson',
	title: 'Annabeths Election in test',
	description: 'New Election for testing for Annabeth',
	contact: 'grover@uic.edu',
      )
    }

    xit "validates onwer_id is set" do
      expect(subject.owner_id).to eq(2)
    end

    it "validates update_by is set" do
      expect(subject.update_by).to eq('pjackson')
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
