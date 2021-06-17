class State < ApplicationRecord
    has_many :cities
    has_many :parks, through: :cities

    validates_presence_of :name, :abbreviation
    validates :abbreviation, length: { is: 2 }
end