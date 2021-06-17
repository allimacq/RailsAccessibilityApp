module ReviewsHelper

    def review_author(review)
        user_signed_in? && current_user.id == review.user_id
    end

end