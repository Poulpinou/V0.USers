class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :idea
  default_scope {order({created_at: :desc}, :user_id)}

  def get_user
    User.find user_id
  end
end
