class CreateAudienceMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :audience_members do |t|
      t.string :name
      t.integer :age
      t.integer :household_income
      t.string :city
      t.boolean :first_time
    end
  end
end
