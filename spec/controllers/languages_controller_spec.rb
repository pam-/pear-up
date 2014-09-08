require 'rails_helper'

RSpec.describe LanguagesController, :type => :controller do
	describe "GET #index" do
		it "should contain array of all languages" do
			get :index
			expect(response).to render_template :index
		end
	end

	describe "GET #show" do
		it "should show a single language's page" do
			get :show
			expect(response).to render_template :show
		end
	end

	describe "GET #new" do
		context "when user isn't admin" do
			let(:user) { FactoryGirl.create(:user) }

			before do 
				sign_in user
				get :new
			end 
			
			it "should send an error" do
				expect(response.status).to eq(401)
			end

		end
	end
end
