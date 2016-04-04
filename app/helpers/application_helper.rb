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

  def include_css css_file
    '<script src="assets/' + css_file + '.css"></script>'
  end
  def include_js js_file
    '<script src="assets/' + js_file + '.js"></script>'
  end
end
