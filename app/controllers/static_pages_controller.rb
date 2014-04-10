class StaticPagesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :calendar, :team, :HoF]

  def index
    @user = User.find(1)
    @user.approved = true
    @user.save
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
    @users = User.all
  end

  def HoF

  end
end
