module LooClone #-- begin module

# Gosu/Chingu stuff
require 'rubygems'
require 'chingu'
include Chingu
include Gosu

# LooClone stuff
require 'states'

class MainMenuState < Chingu::GameState
   def initialize
      super
      
      @normal_text_color = Color.new(255,255,255,255)
      @highlighted_text_color = Color.new(255,255,0,0)

      @menu_items = Array.new
      @menu_items[0] = Chingu::Text.new( "New Game", :x => 512, :y => 300 )
      @menu_items[1] = Chingu::Text.new( "Load Game", :x => 512, :y => 350 )
      @menu_items[2] = Chingu::Text.new( "Quit", :x => 512, :y => 400 )
      @menu_selection = 0

      @menu_items.each { |x| x.color = @normal_text_color }
      @menu_items[@menu_selection].color = @highlighted_text_color

      $window.caption = "LooClone Main Menu"

      self.input = {
         :esc => :exit,

         # Here we assume three menu options
         :down => Proc.new {
            if @menu_selection == 2
               @menu_selection = 0
            else
               @menu_selection += 1
            end
            
            @menu_items.each { |x| x.color = @normal_text_color }
            @menu_items[@menu_selection].color = @highlighted_text_color
         },
         :up => Proc.new {
            if @menu_selection == 0
               @menu_selection = 2
            else
               @menu_selection -= 1
            end

            @menu_items.each { |x| x.color = @normal_text_color }
            @menu_items[@menu_selection].color = @highlighted_text_color

         },
         :return => Proc.new {
            if @menu_selection == 0
               switch_game_state( Level.new )
            elsif @menu_selection == 1
            elsif @menu_selection == 2
               exit
            end
         }
      }
   end

   def update
      
   end

   def draw
      @menu_items.each { |x| x.draw }
   end
end

end
