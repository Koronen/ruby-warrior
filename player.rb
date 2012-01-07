class Player
  MAX_HEALTH = 20

  def play_turn(warrior)
    if warrior.feel.enemy?
      warrior.attack!
    else
      if warrior.health < MAX_HEALTH
        warrior.rest!
      else
        warrior.walk!
      end
    end
  end
end
