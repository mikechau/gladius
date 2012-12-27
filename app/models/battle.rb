class Battle < ActiveRecord::Base
  attr_accessible :challenger, :turn, :user_id
  belongs_to :user
end
