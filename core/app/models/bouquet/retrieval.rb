module Bouquet
  class Retrieval < ApplicationRecord
    belongs_to :storage
    belongs_to :delivery
  end
end
