class AddManufactorstoCars < ActiveRecord::Migration
  def change
    add_column :cars, :manufactor, :string
  end
end
