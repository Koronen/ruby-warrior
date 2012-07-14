require 'spec_helper'

require_relative '../player'

describe Player do
  it { Player.new.respond_to?(:play_turn).must_equal true }
end
