class LanguagesController < ApplicationController
	before_action :authenticate_user!

	def index
		@languages = Language.all
	end

	def show
		@language = Language.find(params[:id])
	end

	def new
		@language = Language.new
	end

	def create
		@language = Language.new(language_params)
		if @language.save
			redirect_to @language
		else 
			render 'new'
		end 
	end

	def edit
		@language = Language.find(params[:id])
	end

	def update
		@language = Language.update(language_params)
		if @language.save
			redirect_to @language
		else 
			render 'edit'
		end 
	end

	def destroy
		@language = Language.find(params[:id]).destroy
	end

	def admin
  	@user = User.find(params[:id])
  	@user.admin
  end

end
