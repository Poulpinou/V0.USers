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

    def self.labels_kind
        labels_kind = [:contact, :hire, :bug]
    end
end
