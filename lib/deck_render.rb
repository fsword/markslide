require 'pry'
require 'pry-nav'
class DeckRender < Redcarpet::Render::HTML
  def header(text, level)
    out = ''
    if level == 1 || level == 2
      out << "</section>\n<section class=\"slide\">\n"
    end
    out << wrap("h#{level}",text)
    out
  end

  def list_item value, type
    wrap 'li', value
  end

  def block_code value, type
    wrap 'pre', value
  end

  def block_quote value
    wrap 'blockquote', value
  end

  def wrap tag, text
    if text =~ /^:.+/
      "<#{tag} class=\"slide\">#{text[1..-1]}</#{tag}>\n"
    elsif text =~ /^<p>:/
      "<#{tag} class=\"slide\">#{text.gsub /<p>:(.+)<\/p>/, '\1'}</#{tag}>\n"
    else
      "<#{tag}>#{text}</#{tag}>\n"
    end
  end

end
