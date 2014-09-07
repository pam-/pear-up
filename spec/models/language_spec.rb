require "rails_helper"

describe Language do
	let(:ruby) { FactoryGirl.create(:language) }

	it { should respond_to(:name) }
	it { should validate_uniqueness_of(:name) }
	it { should have_many(:users_languages) }
	it { should have_many(:users) }

end