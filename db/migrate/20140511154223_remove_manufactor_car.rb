class RemoveManufactorCar < ActiveRecord::Migration
  def change
    remove_column :cars, :manufactor, :string
  end
end
