class AddAdressToSurfboards < ActiveRecord::Migration[7.1]
  def change
    add_column :surfboards, :address, :string
    add_column :surfboards, :photo, :string
  end
end
