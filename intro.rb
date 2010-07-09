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
      @mytext = Chingu::Text.create("Press esc to continue", :x => 512, :y => 300)
   end
      
   def draw
      @mytext.draw
   end
end

end #-- end module
