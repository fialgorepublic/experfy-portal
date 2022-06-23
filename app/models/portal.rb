class Portal < ApplicationRecord
  has_many :brands, dependent: :destroy

  validates :portal_name, presence: true, uniqueness: { case_sensitive: false }
  validates :portal_id, presence: true, uniqueness: { case_sensitive: false }
  validates :portal_url, presence: true, uniqueness: { case_sensitive: false }
  validates :company_name, presence: true
  validates :default_language, presence: true
  validates :default_locale, presence: true
end
