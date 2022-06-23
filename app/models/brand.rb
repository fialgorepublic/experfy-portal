class Brand < ApplicationRecord
  belongs_to :portal, optional: false
end
