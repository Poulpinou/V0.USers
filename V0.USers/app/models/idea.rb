class Idea < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :votes
  default_scope { order({votes_amount: :desc}, :name) }

  def ago
    time = DateTime.now.to_i - self.created_at.to_i
    return "#{time} seconds ago" if time < 60
    time = (time/60).to_i
    return "#{time} minutes ago" if time < 60
    time = (time/60).to_i
    return "#{time} hours ago" if time < 24
    time = (time/24).to_i
    return "#{time} days ago"
  end

  def owner idea
    User.find idea.user_id
  end
end
