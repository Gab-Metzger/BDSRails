class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy]

  def index
    @galleries = Gallery.all
  end

  def show
    @gallery = Gallery.find(params[:id])
    @nb_photos = Gallery.find(params[:id]).photos.count
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(gallery_params)
    if @gallery.save
      redirect_to '/galleries'
    end
  end

  def edit
  end

  def update
    if @gallery.update(gallery_params)
      redirect_to '/galleries'
    end
  end

  def destroy
    if @gallery.destroy
      redirect_to '/'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end

  def gallery_params
    params.require(:gallery).permit(:name)
  end
end
