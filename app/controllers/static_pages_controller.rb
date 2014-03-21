class StaticPagesController < ApplicationController
  
  def index
  end  
  
  def calendar
  @test = false
  end
  
  def team

  end

  def admin
    @galleries = Gallery.all
    @posts = Post.all
    @photos = Photo.all
  end
end
