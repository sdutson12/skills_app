class AddAddressNameToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :address_name, :string
  end
end
