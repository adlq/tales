module ApplicationHelper
  # Returns the full title for the window
  def full_title(title)
    base_title = "Tales"
    if title.empty?
      base_title
    else
      "#{base_title} - #{title}"
    end
  end
end
