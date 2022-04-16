class SearchController < ApplicationController
  def index
   if params[:query].present?
     @books = Book.search(params[:query])
   else
     @books = Book.all
   end
  end
end
