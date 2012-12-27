class Vital < ActiveRecord::Base
  attr_accessible :hp, :mp, :sp, :user_id

  belongs_to :user
end
