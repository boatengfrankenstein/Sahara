class ImagesController < ApplicationController
    before_action :set_classified
  
    def create
      add_more_images(images_params[:images]))
      flash[:error] = "Failed uploading images" unless @classified.save
      redirect_to :back
    end
  
    private
  
    def set_classified
      @classified = Classified.find(params[:classified_id])
    end
  
    def add_more_images(new_images)
      images = @classified.images # copy the old images 
      images += new_images # concat old images with new ones
      @classified.images = images # assign back
    end
  
    def images_params
      params.require(:classified).permit({images: []}) # allow nested params as array
    end
  end