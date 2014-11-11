class LanguagesController < ApplicationController
	before_action :authenticate_user!

	def index
		@languages = Language.all
	end

	def search
		parameters = { term: 'coffee', limit: 10, radius_filter: 16000 }
		location = params[:location]
		render json: Yelp.client.search(location, parameters)
	end

	def show
		@language = Language.find(params[:id])
		@users = @language.users
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
