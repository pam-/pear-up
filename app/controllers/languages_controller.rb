class LanguagesController < ApplicationController
	# before_action :authenticate_user!
	before_action :admin, except: [:index, :show]

	def index
		@languages = Language.all
	end

	

end
