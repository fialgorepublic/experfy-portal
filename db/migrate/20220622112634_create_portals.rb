class CreatePortals < ActiveRecord::Migration[6.1]
  def change
    create_table :portals do |t|
      t.string :portal_name
      t.string :portal_id
      t.string :portal_url
      t.string :company_name
      t.string :default_language
      t.string :default_locale
      t.string :google_tag_manager_id
      t.string :google_analytics_id
      t.string :google_webmaster_id
      t.string :bing_webmaster_id
      t.string :tracking_pixel

      t.timestamps
    end
  end
end
