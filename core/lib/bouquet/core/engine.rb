module Bouquet
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Bouquet
      engine_name 'bouquet_core'

      config.generators do |g|
        g.test_framework :rspec, fixture: true
        g.fixture_replacement :factory_girl, dir: "spec/factories"
      end
    end
  end
end
