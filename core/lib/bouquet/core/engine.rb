module BouquetCore
  class Engine < ::Rails::Engine
    isolate_namespace BouquetCore

    config.generators do |g|
      g.test_framework :rspec, fixture: true
      g.fixture_replacement :factory_girl, dir: "spec/factories"
    end
  end
end
