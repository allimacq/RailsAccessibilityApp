class State < ApplicationRecord
    has_many :cities
    has_many :parks, through: :cities
end