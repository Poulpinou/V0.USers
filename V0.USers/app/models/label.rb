class Label < ApplicationRecord
    validates :name, :presence => true
    validates :category, :presence => true
    validates :owner_id, :presence => true
    has_many :contact
    has_many :idea
    has_many :article

    def self.kind type
        if self.categories.include?(type)
            return Label.where(category: type)
        end
    end

    def self.categories
        return [:contact, :subject, :article]
    end


end
