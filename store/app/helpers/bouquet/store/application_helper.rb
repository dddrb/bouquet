module Bouquet
  module Store
    module ApplicationHelper
      def switch_stylesheet_link_tag(path)
        path = "http://localhost:4000/assets/stylesheets/#{path}.css" if ENV["NODE_ENV"] == 'development'
        stylesheet_link_tag(path)
      end

      def switch_javascript_include_tag(path)
        path = "http://localhost:4000/assets/javascripts/#{path}.js" if ENV["NODE_ENV"] == 'development'
        javascript_include_tag(path)
      end
    end
  end
end
