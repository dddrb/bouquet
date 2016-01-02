module Bouquet
  module Gate
    class Engine < ::Rails::Engine
      isolate_namespace Bouquet::Gate
      config.generators.api_only = true
    end
  end
end
