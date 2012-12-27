class AddDamageCounterToBattle < ActiveRecord::Migration
  def change
    add_column :battles, :damage_counter, :integer
  end
end
