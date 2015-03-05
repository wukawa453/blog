class PostsController < ApplicationController
  before_action :authenticate_user!, except:[:index, :show]

  def index
    #@posts = Post.all.order('created_at DESC').page(params[:page]).per_page(4)
    @posts = Post.text_search(params[:query]).page(params[:page]).per_page(3)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :body, :post_image)
    end
end
