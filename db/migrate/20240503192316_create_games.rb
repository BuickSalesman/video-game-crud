class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :image
      t.text :description
      t.date :release_date
      t.string :platform

      t.timestamps
    end
  end
end
