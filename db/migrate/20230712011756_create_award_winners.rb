class CreateAwardWinners < ActiveRecord::Migration[7.0]
  def change
    create_table :award_winners do |t|
      t.references :award, null: false, foreign_key: true
      t.references :award_receiver, polymorphic: true, null: false
      t.string :role

      t.timestamps
    end
  end
end
