# Title: es6Fiddle tag for Jekyll/Octopress
# Author: Hemanth.HM (http://h3manth.com)
# Description:
#   Given a es6Fiddle shortcode, outputs the es6Fiddle iframe code.
#
# Syntax: {% es6fiddle shorttag [width] [height] %}
#
# Examples:
#
# Input: {% jsfiddle hspmoyhf %}
# Output: <iframe style="width: 100%; height: 300px" src="http://es6fiddle.net/hspmoyhf/"></iframe>
#
# Input: {% jsfiddle hspmoyhf 100 500 %}
# Output: <iframe style="width: 100%; height: 500px" src="http://es6fiddle.net/hspmoyhf/"></iframe>
#

module Jekyll
  class ES6Fiddle < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      if /(?<fiddle>\w+\/?\d?)(?:\s+(?<id>[\w]+))?(?:\s+(?<width>\w+))?(?:\s+(?<height>\w+))?/ =~ markup
        @fiddle   = fiddle
        @id = id
        @width    = width || '100%'
        @height   = height || '300px'
      end
    end

    def render(context)
      if @fiddle
        "<iframe style=\"width: #{@width}; height: #{@height}\" frameborder=\"0\" seamless=\"seamless\" src=\"http://es6fiddle.net/#{@id}/\"></iframe>"
      else
        "Error processing input, expected syntax: {% es6fiddle shorttag [height] [width] %}"
      end
    end
  end
end

Liquid::Template.register_tag('es6fiddle', Jekyll::ES6Fiddle)
