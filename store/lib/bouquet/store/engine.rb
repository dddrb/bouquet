module Bouquet
  module Store
    class Engine < ::Rails::Engine
      isolate_namespace Bouquet::Store

      config.generators do |g|
        g.test_framework :rspec, fixture: true
        g.fixture_replacement :factory_girl, dir: "spec/factories"
        g.javascripts false
        g.stylesheets false
        g.helper false
      end
    end
  end
end
