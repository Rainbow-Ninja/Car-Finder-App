class ApplicationController < ActionController::Base
    # before_action :authenticate_user!
    def after_sign_in_path_for(profile)
        if current_user.profile
            new_car_path
        else
            new_profile_path || root_path
        end
    end
end
