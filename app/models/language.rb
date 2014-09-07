class Language < ActiveRecord::Base
	has_many :users_languages
	has_many :users, through: :users_languages

	validates_uniqueness_of :name
end