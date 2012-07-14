require 'forwardable'

class Warrior
  MAX_HEALTH = 20

  def initialize
    @last_health = MAX_HEALTH
  end

  def play_turn(warrior_io)
    @warrior_io = warrior_io
    act!
    @last_health = health
  end

  extend Forwardable
  def_delegators :@warrior_io, :walk!, :attack!, :rest!, :bind!, :rescue!
  def_delegators :@warrior_io, :feel, :health, :distance, :listen

  def act!
    if feel.enemy?
      attack!
    elsif feel.captive?
      rescue!
    else
      if health < MAX_HEALTH and not under_attack?
        rest!
      else
        walk!
      end
    end
  end

  def under_attack?
    health < @last_health
  end
end
