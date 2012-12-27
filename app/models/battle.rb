class Battle < ActiveRecord::Base
  attr_accessible :challenger_id, :turn, :user_id, :damage_counter, :heal_counter
  belongs_to :user
  belongs_to :challenger, :class_name => "User"
end
