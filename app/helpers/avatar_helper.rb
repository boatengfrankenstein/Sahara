module AvatarHelper
    def photo_avatar(user, options = {})
     
        image_tag user.avatar_url, options
      
    end
  end