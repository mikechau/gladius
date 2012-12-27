class AddStatIdAndVitalIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :stat_id, :integer
    add_column :users, :vital_id, :integer
  end
end
