class UsersController < ApplicationController

	def show
		@user = current_user
    @partner = User.find(params[:id])
		#when user is current user
		@requests = Pairing.where(user_id: @user.id, status: 'requested')

		@languages = Language.all
	end
end 