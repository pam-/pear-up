class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { medium: "400x400>", thumb: "100x100>" }, default_url: "/images/default.jpg"

  has_many :users_languages
  has_many :languages, through: :users_languages, foreign_key: :user_id

  has_many :pairings, -> { where "pairings.status = 'accepted' " }
  has_many :partners, through: :pairings, source: :partner

  validates_presence_of :name, :email, :location
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end