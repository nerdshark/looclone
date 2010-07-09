module LooClone #-- begin module

# Gosu/Chingu stuff
require 'rubygems'
require 'chingu'
include Chingu
include Gosu

# LooClone stuff
require 'states'

class Game < Chingu::Window
   def initialize
      super( 1024, 768 )

      # load level
      
      # load player
      
      # load enemies


      switch_game_state( IntroState )
   end
end

end #-- end module
