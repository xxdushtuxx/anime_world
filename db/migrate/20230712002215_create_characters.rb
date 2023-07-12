class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.references :publisher, null: false, foreign_key: true
      t.string :name
      t.text :deck
      t.string :image_thumb
      t.string :image_small
      t.string :origin

      t.timestamps
    end
  end
end
