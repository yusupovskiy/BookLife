module AuthorHelper
  
  def author_path author
    "/authors/#{convert_author(author)}/#{author.id}"
  end
  
  def convert_author author
    p = author.patronymic
    name = "#{author.given_name}#{'_' unless p.nil?}#{p}_#{author.surname}"
    name.gsub ' ', '_'
  end
end
