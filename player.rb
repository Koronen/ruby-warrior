require 'warrior'

class Player
  def play_turn(warrior_io)
    @warrior ||= Warrior.new
    @warrior.play_turn(warrior_io)
  end
end
