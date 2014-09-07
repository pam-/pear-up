class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :users_languages
  has_many :languages, through: :users_languages

  has_many :pairings, -> { where "pairings.status = 'accepted' " }
  has_many :partners, through: :pairings, source: :partner

  validates_presence_of :name, :email, :location
end