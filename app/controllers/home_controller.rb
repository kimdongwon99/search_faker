class HomeController < ApplicationController
  def index
    if params[:query].nil?
      @posts = Post.all
    else
       @posts = Post.where("title LIKE ?", "%#{params[:query]}%")
    end
    
    
  end
  
  def result
        @posts = Post.where("title LIKE ?", "%#{params[:query]}%")
  end
end