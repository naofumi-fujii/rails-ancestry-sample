class Category < ApplicationRecord
  has_ancestry cache_depth: true
end
