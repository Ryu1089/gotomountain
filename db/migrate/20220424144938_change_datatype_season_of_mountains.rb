class ChangeDatatypeSeasonOfMountains < ActiveRecord::Migration[6.1]
  def change
    change_column :mountains, :season, :string
  end
end
