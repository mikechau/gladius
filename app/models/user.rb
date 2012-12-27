class User < ActiveRecord::Base
  attr_accessible :avatar, :name

  has_one :stat
  has_one :vital
  has_many :battles
end
