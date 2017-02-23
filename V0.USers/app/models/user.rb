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
  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>"}, default_url: "http://istc-pc-test-media.cs.washington.edu/images/default-profile-pic.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
  has_many :notif

  

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

  def notif_count user
    @notifs = Notif.where(seen: false, user_id: user)
    @notifs.count
  end


  def self.role_kind
    role_kind = ["Admin", "User", "Redactor", "Team"]
  end

  def change_role new_role
    self.role = new_role
    self.save(validate: false)
  end

end