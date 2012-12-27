class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :user_id
      t.integer :str
      t.integer :dex
      t.integer :con
      t.integer :intel
      t.integer :wis
      t.integer :cha

      t.timestamps
    end
  end
end
