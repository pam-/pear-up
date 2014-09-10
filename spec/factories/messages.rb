# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
  	
  	sender_id 1
  	recipient_id 2
  	title "Hello"
  	body "Let's Pear!"

  end
end
