class Contact < ApplicationRecord
    validates :sender, :presence => true
    validates :object, :presence => true
    validates :content, :presence => true

    def read
        self.state = :seen
    end

    def add_to_fav
        self.state = :fav
    end

    def rem_from_fav
        self.read
    end

    def line
        line = "<tr"
        line += " class='success' " if self.state == "new"
        line += "><th>"+ self.sender + "</th><th>" + self.object + "</th><th>" + self.ago + "</th><th>"
        line += "<hr id='star-five'>" if self.state == "fav"
        line += "</th></tr>"
    end
end
