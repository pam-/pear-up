class Message < ActiveRecord::Base
	belongs_to :sender, class_name: 'User', primary_key: :sender_id #primary key of that class !!!
	belongs_to :recipient, class_name: 'User', primary_key: :recipient_id

	validates_presence_of :sender_id, :recipient_id, :body
end