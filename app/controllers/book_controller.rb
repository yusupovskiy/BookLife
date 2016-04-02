class BookController < ApplicationController

  include BookHelper

  def show
    @books = Book.all
  end

  def get_by_id
    @book = Book.find_by_id(params[:id])
    if @book.nil?
      # raise ActionController::RoutingError.new "Book #{id} not found"
      redirect_to '/404.html'
    else
      converted_name = convert_book_name(@book.name)
      unless converted_name == params[:name]
        redirect_to action: :get_by_id, id: @book.id, name: converted_name
      else
        # to view
      end
    end
  end
end
