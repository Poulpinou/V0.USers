class Notif < ApplicationRecord
    validates :user_id, :presence => true
    validates :content, :presence => true
    validates :redirection, :presence => true

    def self.create userID, subject, objects=[nil], url
        notif = self.new
        notif.user_id = userID
        notif.content = notif.create_content(subject, objects)
        notif.redirection = url
        notif.save!
    end


    def create_content(subject, objects)
        case subject
        # --------- add notif forms here ---------
        when "comment" #order in array : [user.pseudo(who commented),commented_idea.title]
            begin 
                return "#{objects[0]} commented #{objects[1]}"
            rescue
                return nil
            end
        end  
    end
end