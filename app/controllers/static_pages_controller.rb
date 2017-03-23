class StaticPagesController < ApplicationController
  def home
    @posts = Post.home
  end

  def help
  end

  def about
      @post = Post.find(1);
  end

  def contact
  end

end
