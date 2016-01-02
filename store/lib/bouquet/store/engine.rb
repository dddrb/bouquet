module Bouquet
  module Store
    class Engine < ::Rails::Engine
      isolate_namespace Bouquet::Store
    end
  end
end
