class Stat < ActiveRecord::Base
  attr_accessible :cha, :con, :dex, :intel, :str, :user_id, :wis

  belongs_to :user
end
