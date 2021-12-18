#==============================================================================
# ■ 3DDungeon - Yellow Tile Script
#   @version 1.93 13/03/30
#   @author sabakan
#   @translator rutare
#------------------------------------------------------------------------------
# ■ Effect
#   This script is a demonstration of adding additional effects to tiles and
#   floors. In this sample project, you will be unable to access the menu whist
#   on yellow tiles.
#   Using this way, you could make an area where COMP is unusable
#   (like Shin Megami Tensei), or something like that.
#==============================================================================
class Game_System
  #--------------------------------------------------------------------------
  # ● Public variables
  #--------------------------------------------------------------------------
  def menu_disabled
    return true if $game_map.is_3d? && $game_variables[Saba::Three_D::TILE_TYPE_VARIABLE] == 2
    return @menu_disabled
  end
end