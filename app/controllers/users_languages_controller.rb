class UsersLanguagesController < ApplicationController

	def create
		@new_language = UsersLanguage.add_language
	end

	def destroy
		@user = User.find(params[:id])
		@language = Language.find(params[:id])

		@association = UsersLanguage.remove_language 
	end

end 