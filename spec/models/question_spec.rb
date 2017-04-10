require 'rails_helper'

describe Question do
	# it "is invalid without a title" do
    # 	FactoryGirl.build(:question, title: nil).should_not be_valid
  	# end

  	# it "is invalid without a description" do
    # 	FactoryGirl.build(:question, description: nil).should_not be_valid
  	# end

  	it "is valid question" do
    	FactoryGirl.build(:question).should be_valid
  	end

	it "validates the presenec of title" do 
	FactoryGirl.build(:question, title: nil).should validate_presence_of(:title)	
end

it "validates the presenec of description" do 
	FactoryGirl.build(:question, description: nil).should validate_presence_of(:description)	
	end
end