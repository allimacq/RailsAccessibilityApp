module ParksHelper

    def park_author(park)
        current_user.id == park.user_id
    end

end