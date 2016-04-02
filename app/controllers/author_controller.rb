class AuthorController < ApplicationController

  include AuthorHelper
  
  def show
    @authors = Author.all
  end

  def get_by_id
    @author = Author.find_by_id params[:id]
    if @author.nil?
      redirect_to '/404.html'
    else
      p 'Hello world'
      converted_name = convert_author(@author)
      unless converted_name == params[:name]
        redirect_to action: :get_by_id, id: @author.id, name: converted_name
      else
        # to view
      end
    end
  end
end
