require 'spec_helper'

require 'warrior'

describe Warrior do
  it { Warrior.new.respond_to?(:play_turn).must_equal true }
end

