class AddHealCounterToBattle < ActiveRecord::Migration
  def change
    add_column :battles, :heal_counter, :integer
  end
end
