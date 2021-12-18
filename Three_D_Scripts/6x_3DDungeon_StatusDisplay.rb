#==============================================================================
# ■ 3DDungeon - Status Display
#   @version 1.92 13/01/13
#   @author sabakan
#------------------------------------------------------------------------------
# ■ Effects
#   Causes Window_BattleStatus to be displayed at the lower half of the screen.
#==============================================================================
class Scene_Map
  attr_reader :status_window
  #--------------------------------------------------------------------------
  # ○ Change to 2D Map
  #--------------------------------------------------------------------------
  alias saba_3dstatus_to_2d to_2d
  def to_2d
    saba_3dstatus_to_2d
    dispose_status_window
  end
  #--------------------------------------------------------------------------
  # ○ Change to 3D Map
  #--------------------------------------------------------------------------
  alias saba_3dstatus_to_3d to_3d
  def to_3d
    saba_3dstatus_to_3d
    create_status_window
  end
  #--------------------------------------------------------------------------
  # ● Create Windows
  #--------------------------------------------------------------------------
  alias saba_3d_create_all_windows create_all_windows
  def create_all_windows
    saba_3d_create_all_windows
    create_status_window
  end
  #--------------------------------------------------------------------------
  # ○ Create Status Window
  #--------------------------------------------------------------------------
  def create_status_window
    return if $game_map.is_2d?
    @status_window = Window_BattleStatus.new
    @status_window.openness = 255
    @status_window.y = Graphics.height - @status_window.height
  end
  #--------------------------------------------------------------------------
  # ○ Remove Status Window
  #--------------------------------------------------------------------------
  def dispose_status_window
    @status_window.dispose
    @status_window = nil
  end
end

class Window_BattleStatus
  include Saba::Three_D
  #--------------------------------------------------------------------------
  # ● Initialize Object
  #--------------------------------------------------------------------------
  alias saba_3d_initialize initialize
  def initialize
    saba_3d_initialize
    @refreshed = false
    update
  end
  alias saba_3d_update update
  def update
    saba_3d_update
    return if $game_party.in_battle
    return if $BTEST
    if $game_player.on_damage_floor?
      # Damage Tiles (blue)
      if $game_player.moving?
        @refreshed = false
      else
        unless @refreshed
          refresh 
          @refreshed = true
        end
      end
    end
    if $game_switches[HIDE_ALL_SWITCH]
      self.visible = false
      return
    end
    self.visible = ! ($game_message.busy? && $game_message.position == 2)
  end
end

class Game_Interpreter
  def refresh_status
    if SceneManager.scene.is_a?(Scene_Map)
      SceneManager.scene.status_window.refresh
    end
  end
end