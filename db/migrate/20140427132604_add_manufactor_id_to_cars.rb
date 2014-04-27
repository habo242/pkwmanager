class AddManufactorIdToCars < ActiveRecord::Migration
  def change
    add_column :cars, :manufactor_id, :integer
  end
end
