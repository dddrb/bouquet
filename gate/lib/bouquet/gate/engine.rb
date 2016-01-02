module Bouquet
  module Gate
    class Engine < ::Rails::Engine
      isolate_namespace Bouquet
      config.generators do |g|
        g.api_only = true
        g.test_framework :rspec, fixture: true
        g.fixture_replacement :factory_girl, dir: "spec/factories"
      end
    end
  end
end
