module AuthorHelper
  
  def author_path author
    "/authors/#{convert_author(author)}/#{author.id}"
  end
  
  def convert_author author
    p = author.patronymic
    name = "#{author.given_name}#{'_' unless p.nil?}#{p}_#{author.surname}"
    name.gsub ' ', '_'
  end

  def author_initials author
    p = author.patronymic
    if (p.nil?)
      "#{author.given_name} #{author.surname.first}."
    else
      "#{author.surname} #{author.given_name.first}. #{p.first}."
    end
  end
end
