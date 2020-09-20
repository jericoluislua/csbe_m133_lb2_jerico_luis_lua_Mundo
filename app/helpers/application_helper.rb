module ApplicationHelper
  #method I used for svgs can be found in https://coderwall.com/p/d1vplg/embedding-and-styling-inline-svg-documents-with-css-in-rails
  def embedded_svg filename, options={}
    file = File.read(Rails.root.join('app', 'assets', 'images', 'svg', filename))
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css 'svg'
    if options[:class].present?
      svg['class'] = options[:class]
    end
    doc.to_html.html_safe
  end
end
