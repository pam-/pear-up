# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	sequence(:name) { |n| "user#{n}" } 
  	sequence(:email) { |n| "user#{n}@example.com" }
  	location "Palo Alto"
  	password "foobar123"
  	password_confirmation "foobar123"

  	factory :admin do
  		admin true
  	end 
  end
end
