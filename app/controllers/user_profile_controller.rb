class UserProfileController < ApplicationController
    before_action :authenticate_user!

    def index
        @user = User.find(current_user.id)
        @classifieds = Classified.where(user_id:current_user.id)
    end


end
