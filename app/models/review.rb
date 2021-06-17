class Review < ApplicationRecord
    belongs_to :user
    belongs_to :activity
    belongs_to :park

    validates :review, :rating, :title, presence: true
    validates :rating, inclusion: { in: 1..5 }
    validates :user_id, uniqueness: {scope: :park_id, 
        message: "can only review a park once" }, on: :create
    scope :select_by_accessibility, -> (selection) { where("accessible = ?", selection) }

    def display_accessibility(user, activity, park)
        if self.accessible == "true"
            "#{user.make_name} Found #{activity.name} at #{park.name} To Be Accessible"
        else
            "#{user.make_name} Found #{activity.name} at #{park.name} To Not Be Accessible"
        end
    end

    def stars
        if self.rating == 1
            "#{self.rating} Star"
        else
            "#{self.rating} Stars"
        end
    end
end