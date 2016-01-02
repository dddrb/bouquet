module Bouquet
  module Gate
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
