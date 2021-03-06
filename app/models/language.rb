class Language < ActiveRecord::Base
	has_many :users_languages
	has_many :users, through: :users_languages, foreign_key: :language_id

	validates_uniqueness_of :name
end