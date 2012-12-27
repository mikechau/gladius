class ChangeChallengerToChallengerIdInBattle < ActiveRecord::Migration
  def change
    rename_column :battles, :challenger, :challenger_id
  end
end
