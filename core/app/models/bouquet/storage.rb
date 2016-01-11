module Bouquet
  class Storage < ApplicationRecord
    belongs_to :storable, polymorphic: true
  end
end
