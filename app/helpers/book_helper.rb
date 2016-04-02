module BookHelper

  def convert_book_name(old_name)
    old_name.gsub ' ', '_'
  end
  
  def book_path book
    "/books/#{convert_book_name(book.name)}/#{book.id}"
  end
end
