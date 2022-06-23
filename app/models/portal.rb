class Portal < ApplicationRecord
  after_initialize :init
  has_many :brands, dependent: :destroy

  validates :portal_name, presence: true, uniqueness: { case_sensitive: false }
  validates :portal_id, presence: true, uniqueness: { case_sensitive: false }
  validates :portal_url, presence: true, uniqueness: { case_sensitive: false }
  validates :company_name, presence: true
  validates :default_language, presence: true
  validates :default_locale, presence: true


  def init
    self.tooltip_info ||= {
                            portal_name: 'The go-to-market name of the career portal', portal_id: 'The read only filed displays the Portal ID',
                            portal_url: 'Access your career portal using this domain. This is thee single main domain upon which all applications in your external career portal are based. Don’t include “http” or “https” in easily identify the URL',
                            company_name: 'The company of your career Portal. This can be a shortened version of Portal.', default_language: 'Set the default language of your career portal for your visitors',
                            default_locale: 'Set the default Locale of your career portal for your visitors',
                            google_tag_manager_id: 'After you obtain the Google Tag Manager ID from Google and add it in this field, Experfy Studio Incorporates the necessary code in your career portal for you to use Google Tag Manager. This field only enables Google Tag Manager for your Portal; it doesn’t manage the tags or perform any',
                            google_analytics_id: 'To connect Google Analytics with your Advanced careers portal, fill in below your tracking ID. It can take up to 24 hours for your metrics to show. A Google Analytics ID is a string like “UA-000000-2”',
                            google_webmaster_id: 'The Google Webmaster account.',bing_webmaster_id: 'The Bing Webmaster Tools account.',
                            tracking_pixel: 'Track your successful candidate conversions by adding a third-party tracking pixel to your career pages. When a candidate successfully applies (or “converts”), a pixel can be used to track the success of your job advertising campaigns. Tracking pixels are available through third party platforms like Indeed and Facebook. A tracking pixel must be an image.'
                          }
  end
end
