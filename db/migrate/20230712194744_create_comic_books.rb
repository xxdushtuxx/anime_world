class CreateComicBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :comic_books do |t|
      t.references :publisher, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
