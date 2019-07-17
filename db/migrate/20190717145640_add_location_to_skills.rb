class AddLocationToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :location, :string
  end
end
