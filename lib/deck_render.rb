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

  def wrap tag, text
    if text =~ /^:.+/
      "<#{tag} class=\"slide\">#{text[1..-1]}</#{tag}>\n"
    elsif text =~ /^<p>:/
      "<#{tag} class=\"slide\">#{text.gsub /<p>:(.+)<\/p>/, '\1'}</#{tag}>\n"
    else
      "<#{tag}>#{text}</#{tag}>\n"
    end
  end

# 类库会自动添加 p 标签，因此不使用这个特性
#   def block_quote value
#     if value =~ /^:.+/
#       "<blockquote class=\"slide\">#{value[1..-1]}</blockquote>"
#     else
#       "<blockquote>#{value}</blockquote>"
#     end
#   end

end
