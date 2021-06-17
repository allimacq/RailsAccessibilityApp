class Park < ApplicationRecord
    has_many :activities
    has_many :reviews, through: :activities
    belongs_to :city
    belongs_to :state

    validates :name, presence: true, uniqueness: true

    def accessible_reviews(accessible)
        park_reviews = self.reviews.select_by_accessibility(accessible)
    end
end