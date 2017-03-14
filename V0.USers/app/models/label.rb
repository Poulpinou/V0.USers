class Label < ApplicationRecord
    validates :name, :presence => true
    validates :category, :presence => true
    has_many :contact
    has_many :idea
    has_many :article

    def self.kind type
        if self.categories.include?(type)
            return self.where(category: type)
        end
    end

    def self.categories
        return [:contact, :subject, :article]
    end

    def self.name_exists? name
        state = false
        self.all.each do |label|
            state = true if label.name == name
        end
    end

    def get_labeled name
        if Label.name_exists?(name)
            category = Label.where(name: name).first.category
            category.camelize.constantize.where(label_id: self.id)
        end
    end

    def self.draw object
        begin
            label = self.find(object.label_id)
            return "<div class='label-#{label.name}'>#{label.name.capitalize}</div>".html_safe
        rescue
            return nil
        end
    end



end
