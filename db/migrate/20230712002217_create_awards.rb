class CreateAwards < ActiveRecord::Migration[7.0]
  def change
    create_table :awards do |t|
      t.string :award_name
      t.text :award_description
      t.string :rails
      t.string :generate
      t.string :model
      t.string :AwardWinner
      t.references :award, null: false, foreign_key: true
      t.references :award_receiver, polymorphic: true, null: false
      t.string :role

      t.timestamps
    end
  end
end
