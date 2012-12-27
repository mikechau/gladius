# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Destroying all existing Users, if any."
User.destroy_all
users = [
  {
    :name => "Brometheus",
    :avatar => "http://24.media.tumblr.com/tumblr_m5b2mkol1X1rq3e2ho1_500.png"
  },
  { :url => "Broseidon",
    :avatar => "http://th00.deviantart.net/fs51/PRE/i/2009/273/c/f/Broseidon_by_omegalbagel.jpg"
  }
]

puts "Populating database with #{users.count} entries."
User.create users

#############################################################

puts "Destroy previous Stats"
Stat.destroy_all
stats = [
  {
    :user_id => 1,
    :str => 100,
    :dex => 100,
    :con => 100,
    :intel => 100,
    :wis => 100,
    :char => 100
  },
  {
    :user_id => 2,
    :str => 100,
    :dex => 100,
    :con => 100,
    :intel => 100,
    :wis => 100,
    :char => 100
  }
]

puts "Populating database with #{stats.count} entries."
Stat.create stats

##############################################################

puts "Destroy previous Vitals"
Vital.destroy_all
vitals = [
  {
    :user_id => 1,
    :hp => 1000,
    :mp => 100,
    :sp => 100
  },
  {
    :user_id => 2,
    :hp => 1000,
    :mp => 100,
    :sp => 100
  }
]

puts "Populating database with #{vitals.count} entries."
Vital.create vitals

###############################################################

puts "Destroy previous battles"
Battle.destroy_all
battles = [
  {
    :user_id => 1,
    :turn => true
    :challenger_id => 2,
    :damage_counter => 0,
    :heal_counter => 0
  }
]

puts "Generating #{battles.count} battles."
Battle.create battles

#################################################################
