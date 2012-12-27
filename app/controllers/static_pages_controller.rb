class StaticPagesController < ApplicationController


  def index
    @user = User.all
    @battle = Battle.first

    if @user.first.battles.first.turn
      @hit_user = @user.first
      @attacker = @user.last
    else
      @hit_user = @user.last
      @attacker = @user.first
    end
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

    atk_percent = rand(21) / 100.0
    dmg = enemy.hp * atk_percent
    @user.first.battles.first.update_attributes(:damage_counter => dmg)
    @user.first.battles.first.update_attributes(:heal_counter => 0)
    new_hp = enemy.hp - dmg
    enemy.update_attributes(:hp => new_hp)

    redirect_to root_url
  end

  def heal
    @user = User.all
    if @user.first.battles.first.turn
      heal = User.first.vital
      @user.first.battles.first.update_attributes(:turn => false)
    else
      heal = User.last.vital
      @user.first.battles.first.update_attributes(:turn => true)
    end

    heal_percent = rand(30) / 100.0
    hp = heal.hp * heal_percent
    @user.first.battles.first.update_attributes(:heal_counter => hp)
    @user.first.battles.first.update_attributes(:damage_counter => 0)
    new_hp = heal.hp + hp
    heal.update_attributes(:hp => new_hp)

    redirect_to root_url
  end

end