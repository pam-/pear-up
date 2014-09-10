class UsersLanguage < ActiveRecord::Base
  belongs_to :user
  belongs_to :language

  validates_presence_of :user_id, :language_id
  validates_uniqueness_of :language_id, scope: :user_id

  def self.add_language(language, user) #add the language to the user
  	unless UsersLanguage.exists?(language_id: language.id, user_id: user.id)
  		transaction do 
  			create!(language_id: language.id, user_id: user.id)
  		end
  	# else 
  	# 	return 'failed'
  	end
  end

  def self.remove_language(language, user)
  	association = self.where(language_id: language.id, user_id: user.id)
  	self.delete(association)
  end
end