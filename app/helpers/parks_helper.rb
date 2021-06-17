module ParksHelper

    def park_author(park)
        current_user.id == park.user_id && user_signed_in?
    end

end