class CreateVitals < ActiveRecord::Migration
  def change
    create_table :vitals do |t|
      t.integer :user_id
      t.integer :hp
      t.integer :mp
      t.integer :sp

      t.timestamps
    end
  end
end
