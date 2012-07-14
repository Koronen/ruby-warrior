require 'spec_helper'

describe Player do
  it { Player.new.respond_to?(:play_turn).must_equal true }
end
