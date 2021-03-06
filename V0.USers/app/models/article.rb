class Article < ApplicationRecord
    belongs_to :game
    validates :content, presence: true

    def self.labels_kind
        return [:new, :survey, :update, :global]
    end
end
