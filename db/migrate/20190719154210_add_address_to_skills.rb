class AddAddressToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :address, :string
    add_column :skills, :latitude, :float
    add_column :skills, :longitude, :float
  end
end
