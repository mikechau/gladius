class CreateBattles < ActiveRecord::Migration
  def change
    create_table :battles do |t|
      t.integer :user_id
      t.boolean :turn
      t.integer :challenger

      t.timestamps
    end
  end
end
