class CreateManufactors < ActiveRecord::Migration
  def change
    create_table :manufactors do |t|
      t.string :manufactor

      t.timestamps
    end
  end
end
