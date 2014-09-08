class UsersController < ApplicationController

	def show
		@user = current_user
		@partner = User.find(params[:id])
		@pairing_request = Pairing.request(@user, @partner)

		@pairings = Pairing.where(user_id: @user.id, status: 'requested')

		# @potential_partner = @pairing.user
		# @pairing_confirm = Pairing.confirm(@potential_partner, @user)
	end

end 