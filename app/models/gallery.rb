class Gallery < ActiveRecord::Base
  has_many :photos

  def cover
    photos.first.try :image_url, :thumb
  end
end
