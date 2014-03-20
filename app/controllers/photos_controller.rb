class PhotosController < ApplicationController
  def index
    @photos = Gallery.find(params[:gallery_id]).photos.order('created_at DESC')
  end

  def new
    @photo = Photo.new
  end

  def create
        @gallery = Gallery.find(params[:gallery_id])
        @photo = @gallery.photos.new(photos_params)
        if @photo.save
                redirect_to '/galleries'
        end
  end

  def destroy
    @photo = Photo.find(params[:id])
    if @photo.destroy
      redirect_to '/galleries'
    end
  end

  def photos_params
    params.require(:photo).permit(:title, :image)
  end
end
