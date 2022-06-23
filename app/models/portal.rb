class Portal < ApplicationRecord
	validates :portal_name, presence: true, uniqueness: true
	validates :portal_id, presence: true, uniqueness: true
	validates :portal_url, presence: true, uniqueness: true
	validates :company_name, presence: true
	validates :default_language, presence: true
	validates :default_locale, presence: true

	has_many :brands, dependent: :destroy

end
