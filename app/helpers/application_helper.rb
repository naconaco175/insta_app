module ApplicationHelper
  
  #ページごとの完全なタイトルを返します
  def full_title(page_titel = '')
    base_title = "Instagram App"
    if page_titel.empty?
      base_title
    else
      page_titel + " | " + base_title
    end
  end

end
