class OldNameToNewName < ActiveRecord::Migration
  def change
    rename_column :pkws,:marque,:marque
    rename_column :pkws,:modell,:model
    rename_column :pkws,:kilometerstand,:milage
    rename_column :pkws,:tüv, :MOT
  end
end
