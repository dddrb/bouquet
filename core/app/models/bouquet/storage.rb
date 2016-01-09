module Bouquet
  class Storage < ApplicationRecord
    belongs_to :stock
    belongs_to :delivery
  end
end
