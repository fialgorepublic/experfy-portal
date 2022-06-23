class Brand < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :identifier, presence: true, uniqueness: { case_sensitive: false } 
  validates :microsite_identifier, presence: true, uniqueness: { case_sensitive: false } 
  belongs_to :portal, optional: false
end
