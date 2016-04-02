module ApplicationHelper
  
  @@default_title = 'BookLife'
  @@title = 'Nothing'

  def title
    @@title
  end

  def title_only title
    @@title = title
  end

  def full_title title
    @@title = title + ' - ' + @@default_title
  end

  def default_title title
    full_title title    
  end
end
