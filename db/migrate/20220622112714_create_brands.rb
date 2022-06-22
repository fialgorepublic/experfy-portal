class CreateBrands < ActiveRecord::Migration[6.1]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :identifier
      t.string :microsite_identifier
      t.references :portal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
