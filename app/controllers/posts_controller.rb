class PostsController < ApplicationController

  before_filter :authenticate_user!, :except => [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
  end

  def show
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	if @post.save
  		redirect_to '/posts'
  	end
  end

  def edit 
  end

  def update
    if @post.update(post_params)
      redirect_to '/posts'
    end 
  end 

  def destroy
    if @post.destroy
      redirect_to '/posts'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

  def post_params
    params.require(:post).permit(:title, :author, :body)
  end
end
