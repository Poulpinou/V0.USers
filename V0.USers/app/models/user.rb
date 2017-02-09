class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :pseudo, :presence => true
  validates :password, :presence => true
  validates :role, :presence => true
  has_many :idea
  has_many :comment
  has_and_belongs_to_many :votes


  def can_vote? idea
    verify = true
    Vote.where(user_id: id).each do |vote|
      verify = false if vote.idea_id == idea.id
    end
    return verify
  end

  def has_no_post?
    if idea.count == 0
      return true
    else
      return false
    end
  end

end