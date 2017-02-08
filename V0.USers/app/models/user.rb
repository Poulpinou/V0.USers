class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #validates :pseudo, :presence => true
  validates :password, :presence => true
  validates :role, :presence => true
  has_many :idea
end
