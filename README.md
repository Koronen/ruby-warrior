# Ruby Warrior

This is my warrior for Ryan Bates' game [ruby-warrior](https://github.com/ryanb/ruby-warrior).

## Installation

    export RUBYWARRIOR_NAME="james"
    export RUBYWARRIOR_DIFFICULTY="beginner"
    mkdir ruby-warrior
    git clone https://github.com/Koronen/ruby-warrior.git ruby-warrior/$RUBYWARRIOR_NAME-$RUBYWARRIOR_DIFFICULTY
    cd ruby-warrior/$RUBYWARRIOR_NAME-$RUBYWARRIOR_DIFFICULTY
    bundle install
    rake install

## Usage

To fight, simply type

    rake

To run the tests, type

    rake spec
