class UsersLanguagesController < ApplicationController

	def create
		@user = current_user
		@language = Language.find(params[:language_id])
		@new_language = UsersLanguage.add_language(@language, @user)
		if @new_language
			flash[:success] = "Successfully added to #{@language.name} room..."
			redirect_to language_path(@language)
		else 
			flash[:error] = "Whoops, something went wrong..."
			redirect_to user_path(@user)
		end 
	end

	def destroy
		@user = User.find(params[:id])
		@language = Language.find(params[:id])

		@association = UsersLanguage.remove_language 
	end

end 