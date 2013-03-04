$: << File.expand_path(File.dirname(__FILE__))
require 'redcarpet'
require 'deck_render.rb'
@markdown = Redcarpet::Markdown.new(DeckRender)
Encoding.default_external='UTF-8'
