class City < ApplicationRecord
    has_many :parks
    has_many :activitie
end