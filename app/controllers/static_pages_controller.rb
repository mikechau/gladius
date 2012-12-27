class StaticPagesController < ApplicationController


  def index
    @user = User.all
  end

  def attack
    @user = User.all
    if @user.first.battles.first.turn
      enemy = User.last.vital
      @user.first.battles.first.update_attributes(:turn => false)
    else
      enemy = User.first.vital
      @user.first.battles.first.update_attributes(:turn => true)
    end

    new_hp = enemy.hp - 10
    enemy.update_attributes(:hp => new_hp)

    redirect_to root_url
  end

end