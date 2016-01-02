module Bouquet
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Bouquet::Core
      config.generators.api_only = true
    end
  end
end
