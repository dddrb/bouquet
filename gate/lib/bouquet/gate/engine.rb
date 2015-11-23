module Bouquet
  module Gate
    class Engine < ::Rails::Engine
      isolate_namespace Bouquet
      engine_name 'bouquet_gate'

      config.generators do |g|
        g.javascripts false
        g.stylesheets false
        g.helper false
        g.template_engine false
        g.test_framework :rspec, fixture: true
        g.fixture_replacement :factory_girl, dir: "spec/factories"
      end
    end
  end
end
