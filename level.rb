module LooClone

# Gosu/Chingu stuff
require 'rubygems'
require 'chingu'
include Chingu
include Gosu

# LooClone stuff
require 'states'
require 'player'

class LevelState < Chingu::GameState
   def initialize
      super
      $window.caption = "LooClone Level"
      @player = Player.new
   end

end

end
