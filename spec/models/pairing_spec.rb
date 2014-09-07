require "rails_helper"

describe Pairing do
	let(:user) { FactoryGirl.create(:user) }
	let(:partner) { FactoryGirl.create(:user, name: 'Jim') }
	let(:other_partner) { FactoryGirl.create(:user, name: 'Jules') }

	describe ".request" do
		before { Pairing.request(user, partner); Pairing.request(user, other_partner) }

		it "should not create a partnership" do
			expect(user.pairings).to be_empty
		end

		describe ".confirm" do
			before { Pairing.confirm(user, partner); Pairing.confirm(user, other_partner) }

			it "should create a pairing" do
				expect(user.partners).to include(partner && other_partner)
				expect(partner.partners).to include(user)
			end
		end
	end


	
end