class CreatePublishers < ActiveRecord::Migration[7.0]
  def change
    create_table :publishers do |t|
      t.string :name
      t.text :deck
      t.string :image_thumb
      t.string :image_small

      t.timestamps
    end
  end
end
