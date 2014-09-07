require 'rails_helper'

describe User do
	let(:user) { FactoryGirl.create(:user) }

	subject { user }

	it { should respond_to(:name) }
	it { should respond_to(:email) }
	it { should respond_to(:password) }
	it { should respond_to(:password_confirmation) }
	it { should respond_to(:location) }
	it { should respond_to(:admin) }

	it { should have_many(:users_languages) }
	it { should have_many(:languages) }
	it { should have_many(:pairings) }
	it { should have_many(:partners) }

	it { should validate_presence_of(:name) }
	it { should validate_presence_of(:location) }
	it { should validate_presence_of(:email) }
	it { should validate_uniqueness_of(:email) }
	it { should ensure_length_of(:password) }

	describe "when password and password_confirmation are not the same" do
		before do
		  user.password = "foobar123"
		  user.password_confirmation = "foobar125"
		end

		it { should_not be_valid }
	end

	describe "creating an admin" do
		let(:admin) { FactoryGirl.create(:user, admin: true) }

		it "should be an admin" do
			expect(admin).to be_admin
		end

		context "without admin set to true" do
			it "should not be an admin" do
				expect(user).not_to be_admin
			end
		end
	end

end