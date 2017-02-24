class Game < ApplicationRecord
    has_many :idea
    has_many :article
    validates :name, presence: true
    validates :version, presence: true
end
