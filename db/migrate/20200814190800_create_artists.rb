class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :picture
      t.string :tracklist

      t.timestamps
    end
  end
end
