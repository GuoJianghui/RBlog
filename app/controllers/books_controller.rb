class BooksController < ApplicationController
  respond_to :html, :json

  def index
    @books = Post.book.order('created_at DESC')
    respond_to do |format|
      format.html {}
      format.atom { render layout: false }
    end
  end

  def show
    @book = Post.find_by_slug(params['id'])
  end
end