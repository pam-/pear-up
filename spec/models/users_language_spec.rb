require 'rails_helper'

describe UsersLanguage do

	let(:user) { FactoryGirl.create(:user) }
	let(:ruby) { FactoryGirl.create(:language) }
	let(:python) { FactoryGirl.create(:language, name: 'Python') }

	describe ".create" do
		context "without a user id" do
			before { UsersLanguage.create }

			it { should_not be_valid }
		end
	end 

	describe ".add_language" do
		before do
		 UsersLanguage.add_language(ruby, user)
		 UsersLanguage.add_language(python, user)
		end 

		it "should add ruby to the user's languages" do
			expect(user.languages).to include(ruby)
		end

		it "should add more than one language to the user's languages" do
			expect(user.languages).to include(python && ruby)
		end
	end
end