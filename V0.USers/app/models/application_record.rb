class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def ago date = self.created_at.to_i
    time = DateTime.now.to_i - date.to_i
    return "#{time} seconds ago" if time < 60
    time = (time/60).to_i
    return "#{time} minutes ago" if time < 60
    time = (time/60).to_i
    return "#{time} hours ago" if time < 24
    time = (time/24).to_i
    return "#{time} days ago"
  end
  
end
