class PairingController < ApplicationController

	def create
		# @user = current_user
		# @partner = User.find(params[:id])
		# @pairing = Pairing.request(@user, @partner)
		redirect_to user_path(@user)
	end

	def update
		@pairing = Pairing.find(params[:id])
		@partner = @pairing.partner 
		@user = @pairing.user
		redirect_to user_path(@user)
	end

	def destroy
	
	end

end 