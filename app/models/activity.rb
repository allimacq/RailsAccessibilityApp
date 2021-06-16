class Activity < ApplicationRecord
    has_many :parks
    has_many :reviews
end
