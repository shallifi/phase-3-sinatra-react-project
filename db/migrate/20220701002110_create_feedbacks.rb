class CreateFeedbacks < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
      t.integer :score
      t.string :what_did_you_enjoy
      t.string :what_needs_improvement
      t.boolean :would_you_watch_again
      t.string :comment
      t.string :how_did_you_hear_about_the_show
      t.timestamps
      t.integer :show_piece_id
      t.integer :audience_member_id
    end
  end
end
