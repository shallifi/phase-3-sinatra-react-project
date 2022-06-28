class CreateShowPieces < ActiveRecord::Migration[6.1]
  def change
    create_table :show_pieces do |t|
      t.string :title
      t.integer :number_of_performers
      t.integer :length
      t.string :music_style
      t.string :movement_style
    end
  end
end
