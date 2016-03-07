require 'rails_helper'
require 'spec_helper'

RSpec.describe Election, type: :model do
  describe "Factory girl tests" do
    it "has a valid factory" do
      FactoryGirl.create(:election).should be_valid
    end
  end
  describe "validate presence of required fields" do
      election = FactoryGirl.build(:election)
    it "validates presence of :title" do
      expect(election).to validate_presence_of(:title)
    end
    it "validates presence of :contact" do
      expect(election).to validate_presence_of(:contact)
    end

    it "validates presence of :start" do
      expect(election).to validate_presence_of(:start)
    end

    it "validates presence of :finish" do
      expect(election).to validate_presence_of(:finish)
    end

    it "validates usage of owner_id instead of user_id" do
      expect(election.owner_id).to be_truthy
    end
  end

  describe "validate election object creation" do
    election = FactoryGirl.create(:election)
    it "validates onwer_id is set" do
      expect(election.owner_id).to be_truthy
    end

    it "validates update_by is set" do
      expect(election.update_by).to_not be_nil
    end

    it "validates title is set" do
      expect(election.title).to_not be_nil
    end

    it "validates description is set" do
      expect(election.description).to_not be_nil
    end

    it "validates contact is set" do
      expect(election.contact).to_not be_nil
    end

    it "validates start is set" do
      expect(election.start).to_not be_nil
    end

    it "validates finish is set" do
      expect(election.finish).to_not be_nil
    end

  end

  describe "validate object methods" do
	# build does not call validations and in this case that is exaclty what is being tested so need
	# to use create
    it "ensure start is not in the past" do
      expect{FactoryGirl.create(:election, start: Faker::Time.backward(1, :evening)) }.to raise_error(/cannot be in the past/)
    end

    it "ensure start is not before finish" do
      expect{FactoryGirl.create(:election, start: Faker::Time.forward(5, :evening), finish: Faker::Time.forward(2, :evening)) }.to raise_error(/cannot be after finish/)
    end
  end
end
