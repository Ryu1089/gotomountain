class ChangeDatatypeStartOfTime < ActiveRecord::Migration[6.1]
  def change
     change_column :mountains, :start, :time
  end
end
