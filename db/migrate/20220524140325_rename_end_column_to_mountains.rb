class RenameEndColumnToMountains < ActiveRecord::Migration[6.1]
  def change
    rename_column :mountains, :end, :endtime
  end
end
