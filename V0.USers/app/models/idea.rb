class Idea < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :comment
  has_and_belongs_to_many :votes
  validates :title, :presence => true
  validates :description, :presence => true
  validates :content, :presence => true
  #default_scope { order({votes_amount: :desc}, :title) }


  def owner idea
    User.find idea.user_id
  end

  def approve
    self.seal = :approved
    self.seal_text = DateTime.now.strftime("%m/%d/%Y")
    self.save
  end

  def implement
    self.seal = :implemented
    self.seal_text = DateTime.now.strftime("%m/%d/%Y")
    self.save
  end

  def reject reason
    self.seal = :rejected
    self.seal_text = reason
    self.save
  end

end