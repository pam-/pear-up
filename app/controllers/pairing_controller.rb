class PairingController < ApplicationController

	def create
		@user = current_user
		@partner = User.find(params[:partner_id])
		@pairing = Pairing.request(@user, @partner)

		if @pairing.save
			redirect_to user_path(@partner)
			flash[:success] = "Successfully sent..."
		else 
			flash[:error] = "Successfully created..."
		end
	end

	def confirm
		@user = current_user
		@partner = User.find(params[:partner_id])
		
		if @pairing = Pairing.confirm(@user, @partner)
			redirect_to user_path(@user)
			flash[:success] = "Successfully created..."
		else 
			flash[:error] = "Successfully created..."
		end		
	end

	def destroy
	
	end

end 