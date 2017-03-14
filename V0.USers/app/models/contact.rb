class Contact < ApplicationRecord
    validates :sender, :presence => true
    validates :object, :presence => true
    validates :content, :presence => true
    belongs_to :label

    def read
        self.state = :seen if self.state != "fav"
    end

    def add_to_fav
        self.state = :fav
    end

    def rem_from_fav
        self.read
    end

    def self.labels_kind
        return [:contact, :hire, :bug]
    end

    def star
        if self.state == "fav"
            return "star"
        else
            return "star-o"
        end
    end
end
