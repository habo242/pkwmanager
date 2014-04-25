class CreatePkws < ActiveRecord::Migration
  def change
    create_table :pkws do |t|

      t.string :marke
      t.string :modell
      t.integer :kilometerstand
      t.boolean :tüv

      t.timestamps

    end
  end
end
