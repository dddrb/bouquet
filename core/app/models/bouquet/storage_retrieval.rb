module Bouquet
  class StorageRetrieval < ApplicationRecord
    belongs_to :storage
    belongs_to :delivery
  end
end
