class User < ApplicationRecord
  validates :pseudo, :presence => true
  validates :password, :presence => true
  validates :role, :presence => true
  has_many :idea
end
