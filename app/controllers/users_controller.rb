class UsersController < ApplicationController

	def show
		@user = current_user
    @partner = User.find(params[:id])
		#when user is current user
		@pairings = Pairing.where(user_id: @user.id, status: 'requested')
	end
end 