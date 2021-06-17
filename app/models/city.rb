class City < ApplicationRecord
    has_many :parks
    has_many :activities

    validates_presence_of :name, :zipcode, :state
end