class OldTableNewTable < ActiveRecord::Migration
  def change
    rename_table :pkws, :cars
  end
end
