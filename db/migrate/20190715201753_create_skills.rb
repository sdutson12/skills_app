class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :title
      t.string :description
      t.string :sport
      t.integer :price
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
