module NavigationHelper
  def navigation_item(text, url, *classes)
    classes << "current" if current_page?(url)
    tag(:li, classes.any? ? { :class => classes.join(" ") } : {}) { link(text, url) }
  end
  
  def current_page?(url)
    case url
    when "/"
      current_page == "/" || current_page == "/index.html"
    else
      current_page == url
    end
  end
end
