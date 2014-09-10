class PairingController < ApplicationController

	def create
		@user = current_user
		@partner = User.find(params[:partner_id])
		@pairing = Pairing.request(@user, @partner)

		if @pairing
			flash[:success] = "Request successfully sent!"
			redirect_to user_path(@partner)
		else 
			flash[:error] = "Partnership already requested!"
			redirect_to user_path(@partner)
		end
	end

	def confirm
		@user = current_user
		@partner = User.find(params[:partner_id])
		
		if @pairing = Pairing.confirm(@user, @partner)
			flash[:success] = "Partnership confirmed!"
			redirect_to user_path(@user)
		else 
			flash[:error] = "Whoops! Something went wrong..."
			redirect_to user_path(@user)
		end		
	end

	def destroy
	
	end

end 