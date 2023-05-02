class CreateCoins < ActiveRecord::Migration[7.0]
  def change
    create_table :coins do |t|
      t.string :short_description
      t.text :long_description
      t.string :acronym
      t.string :url_image
      t.boolean :active

      t.timestamps
    end
  end
end
