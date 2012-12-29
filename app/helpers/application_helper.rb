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

  # Conversion from Markdown to HTML using RedCarpet
  def markdown_format(text)
    options = {
      autolink: true,
      space_after_headers: true,
      no_intra_emphasis: true
    }
    renderer = Redcarpet::Render::HTML
    markdown = Redcarpet::Markdown.new(renderer, options)
    markdown.render(text).html_safe
  end
end
