class RenameMarque < ActiveRecord::Migration
  def change
    rename_column :cars,:marke,:marque
  end
end
