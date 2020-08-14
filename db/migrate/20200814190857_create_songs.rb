class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :preview
      t.integer :duration
      t.string :album
      t.date :release_date

      t.timestamps
    end
  end
end
