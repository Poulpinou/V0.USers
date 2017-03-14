class Label < ApplicationRecord
    validates :name, :presence => true, uniqueness: true
    validates :category, :presence => true
    has_many :contact
    has_many :idea
    has_many :article

    def self.kind(type, for_select = false)
        if self.categories.include?(type)
            if for_select
                labels = []
                self.where(category: type).each do |label|
                    obj = [label.name.capitalize, label.id]
                    labels.push(obj)
                end
                return labels
            else
                return self.where(category: type)
            end
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

    def self.kind_category category
        return self.where(category: category) if self.categories.include?(category)
    end

    def self.get_id name
        return self.where(name: name).first.id
    end



end
