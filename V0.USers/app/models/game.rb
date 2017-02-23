class Game < ApplicationRecord
    has_many :idea
    validates :name, presence: true
    validates :version, presence: true
end
