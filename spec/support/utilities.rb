def full_title(page_tile)
  base_title = "Ruby on Rails Tutorial Sample App"
  if page_tile.empty?
    base_title
  else
    "#{base_title} | #{page_tile}"
  end
end