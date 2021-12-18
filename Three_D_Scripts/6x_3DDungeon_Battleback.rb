#==============================================================================
# ■ 3DDungeon - Combat Backdrop
#   @version 1.0 12/01/31
#   @author sabakan
#------------------------------------------------------------------------------
# ■ Effect
#   Keeps the current background as the backdrop when combat starts.
#==============================================================================
class Scene_Map
  #--------------------------------------------------------------------------
  # ● Hide all windows
  #--------------------------------------------------------------------------
  def hide_all_windows
    @hide_windows = []
    instance_variables.each do |varname|
      ivar = instance_variable_get(varname)
      if ivar.is_a?(Window) && ivar.visible
        ivar.visible = false 
        @hide_windows.push(ivar)
      end
    end

  end
  #--------------------------------------------------------------------------
  # ● Show erased windows
  #--------------------------------------------------------------------------
  def restore_visibility_all_windows
    @hide_windows.each {|w| w.visible = true }
  end
  #--------------------------------------------------------------------------
  # ● End Processing
  #--------------------------------------------------------------------------
  alias saba_3d_battle_terminate terminate
  def terminate
    hide_all_windows
    $game_map.screen.clear_flash # Remove poison effects
    @spriteset.update_viewports
    SceneManager.snapshot_for_background_no_blur
    restore_visibility_all_windows
    
    saba_3d_battle_terminate
  end
  #--------------------------------------------------------------------------
  # ● Activate battle trasition
  #--------------------------------------------------------------------------
  def perform_battle_transition
    # Deleted ~sabakan
  end
end

module SceneManager
  #--------------------------------------------------------------------------
  # ○ Snapshot the current background (No blur)
  #--------------------------------------------------------------------------
  def self.snapshot_for_background_no_blur
    @background_bitmap_no_blur.dispose if @background_bitmap_no_blur
    @background_bitmap_no_blur = Graphics.snap_to_bitmap
  end
  #--------------------------------------------------------------------------
  # ○ Get bitmap for battle background
  #--------------------------------------------------------------------------
  def self.background_bitmap_no_blur
    @background_bitmap_no_blur
  end
end

class Spriteset_Battle
  alias saba_3d_battle_create_battleback2 create_battleback2
  def create_battleback2
    saba_3d_battle_create_battleback2
    # As long as any unnaturality is removed! ~sabakan
    #Graphics.transition(40)
    #Graphics.freeze
  end
  #--------------------------------------------------------------------------
  # ● Process bitmap into battle background
  #--------------------------------------------------------------------------
  def create_blurry_background_bitmap
    source = SceneManager.background_bitmap_no_blur
    bitmap = Bitmap.new(Graphics.width, Graphics.height)
    bitmap.blt(0, 0, source, source.rect)
    @back1_sprite.color.set(16, 16, 16, 128)
    bitmap
  end
end

class Scene_Battle
  #--------------------------------------------------------------------------
  # ● Ending Pre-processing
  #--------------------------------------------------------------------------
  def pre_terminate
    super
    #Graphics.fadeout(30) if SceneManager.scene_is?(Scene_Map)　# Deleted ~sabakan
    Graphics.fadeout(60) if SceneManager.scene_is?(Scene_Title)
  end
end