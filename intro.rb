module LooClone #-- begin module

# Gosu/chingu stuff
require 'rubygems'
require 'chingu'
include Chingu
include Gosu

# LooClone stuff
require 'states'

class IntroState < Chingu::GameState
   def initialize
      super
      self.input = { :esc => Proc.new { switch_game_state( MainMenuState.new ) } }
      $window.caption = "LooClone Intro"
   end
end

end #-- end module
