#==============================================================================
# ■ 3DDungeon
#   @version 2.0 13/10/12
#   @author sabakan
#   @translator rutare
#------------------------------------------------------------------------------
# ■ Translator's Preface
#
#   This script and the documentation in the sample project was originally in
#   Japanese.
#   My Japanese may not be perfect, but there shouldn't be any problems.
#
#   I decided to translate it as I was having trouble looking for it intially
#   when I was looking for appropriate scripts for my own projects, and it
#   was by my own good fortune that I knew enough Japanese to be able to learn
#   about Sabakan's works and by extension the works of other Japanese
#   script writers. After some introspection, I realised that there are other
#   people who want look for such scripts are out there but don't know
#   enough Japanese to be able to find or use such scripts.
#
#   You can find Sabakan's twitter at "https://twitter.com/sabakan03".
#   His last tweet was in 2019 though, so I'm not sure he's still active.
#
#   On the subject of these particular scripts though, despite its name,
#   it isn't actually in full polygonal 3d; for that you should use FPLE,
#   which you can find at 
# https://rgss-factory.net/2013/09/10/ace-fple-ace-first-person-labyrinth-explorer/
#   *Warning - website is in French.
#   Sabakan's 3DDungeon scripts are closer to classic dungeon crawlers
#   such as the original Might & Magic in terms of graphics,
#   though 3DDungeon adds optional animation when moving.
#
#   FPLE is just straight up better in terms of graphics. You can actually
#   have damage tiles and walls look different so the player can intuit
#   instead of only being able to cross fingers whenever they enter a new
#   room.
#
#   Where I would say where 3DDungeon out does FPLE is in the quality of
#   life, such as the Automap/Minimap feature and how it innately has FOE
#   funtionality (Events can not just move around autonomously, but are also
#   properly limited to only move after the player and are even accounted for
#   in the aforementioned Automap/Minimap feature), and it's ease of use;
#   FPLE requires you to use a custom made map creation tool called Marta, which
#   can be very unstable and is liable to crash, while 3DDungeon doesn't
#   need anything but the base RPG Maker VX Ace program.
#
#   As a side note, I would like to try to possibly fuse the two
#   script systems together; FPLE's full polygonal 3D maps with 3DDungeon's
#   Automapping and FOE features. My Ruby coding skill isn't very good, but
#   this is something I'd really like to see.
#
#   ~rutare
#    
# ■ Instructions
#    1. Copy the 3DDungeon scripts into your project's script editor.
#    2. Copy all files under "Graphics" into your project folder.
#       ※Files in "Graphics/Pictures" aren't necessary
#    3. Open your project's tilesets tab and copy everything you see
#       in the 3DDungeon sample project
#
# ■ Tile Explanation
#    ▼ Black Walls
#       Ordinary walls. Use these normally.
#       Contained within the "<>" marks in the Map Name is the
#       Map Art Designation (examples can be seen in under "Graphics/System").
#       The first Map Art Designation will be used for these walls.
#
#    ▼ Red Walls
#       Subsidiary walls. 
#       A maximum of 2 Map Art Designations can be set per map: the second
#       will be used for any Red Walls used in the map.
#       MAP003 is the demo for this feature.
#       You can use this to add a bit more variety to your dungeons.
#
#    ▼ White Floors
#       Normal floor tiles. Use these ordinarily.
#       When the player is standing on this tile, the TILE_TYPE_VARIABLE is
#       set from "15" to "0".
#
#    ▼ Blue Floors
#       In the sample project these are used as damage tiles, but you can
#       customise this to your liking.
#       When mapped out on the minimap these will be shown in the colour blue.
#       When the player is standing on this tile, the TILE_TYPE_VARIABLE is
#       set from "15" to "1".
#
#    ▼ Yellow Floors
#       In the sample project these tiles prevent you from opening the menu
#       if you are on them, but you can customise what exactly happens to the
#       player in the "３DDungeon Yellow Floors Act" script.
#       These will be shown in the colour yellow on the minimap.
#       When the player is standing on this tile, the TILE_TYPE_VARIABLE is
#       set from "15" to "2".
#
#==============================================================================
module Saba
  module Three_D
    # While this is enabled (set to "true"), automapping is active.
    AUTOMAPPING_ENABLED = true
    
    # Number designation of the switch that keeps the status window and
    # automapping/minimap window open whilst messages are displayed.
    SHOW_STATUS_AT_MESSAGE_SWITCH = 110

    # Number designation of the switch that prohibits movement
    # through key inputs.
    DISABLE_KEY_INPUT = 113
    
    # Number designation of the switch that hides the status window and
    # automapping/minimap window.
    HIDE_ALL_SWITCH = 114
    
    # Number designation of the switch that hides only the
    # automapping/minimap window.
    HIDE_AUTOMAP_SWITCH = 115
    
    # Number designation of the switch that shows the
    # automapping/minimap window.
    SHOW_AUTOMAP_SWITCH = 116
    
    # Number designation of the switch that activate the dungeon wall
    # tint change script. Tint colour can be adjusted by changing the
    # numbers of "Color.new(30, 30, 30, 30)"
    # (search for "$dungeon.wall_color = Color.new(30, 30, 30, 30)")
    COLORING_WALL_SWITCH = 117
    
    # Number designation of the switch that hides the automapping/minimap
    # window even if other switches that show it are enabled.
    # Use this during events.
    DISABLE_WHOLE_MAP_SWITCH = 118
    
    # Number designation of the switch that is turned on when a backstep
    # is taken during a battle escape.
    BACK_AT_ESCAPE_SWITCH = 119
    
    # Number designation of the switch that hides the automapping/minimap
    # window when in a "Dark Zone".
    HIDE_AUTOMAP_IN_DARK_ZONE_SWITCH = 120
    
    # Variable that states the floor type/colour that the player is standing
    # on.
    TILE_TYPE_VARIABLE = 15
    
    # Wait time between each step while dashing.
    DASH_WAIT = 11
    # Wait time between each step while moving normally.
    NORMAL_WAIT = 16
    # Wait time between each step while strafing (moving sideways).
    TRANSLATION_WAIT = 24
    # Dictates wait type - time between each turn made when changing direction.
    # 0 → Normal, Wait Time 21
    # 1 → Fast, Wait Time 17
    # 2 → Faster, Wait Time 14
    # 3 → No Wait, Wait Time 0
    ROTATION_WAIT_TYPE = 0
    
    # When true, the screen will flash on taking slip damage (damage tiles).
    #FLASH_AT_SLIP_DAMAGE = false
    
    # When true, enables movement sound effects.
    MOVE_SE_ENABLED = true
    
    # Designates sound effect played when a step is taken.
    MOVE_SE = "Audio/SE/Knock"
    # Adjusts the volume of the sound effect.
    MOVE_SE_VOLUME = 75
    # Adjusts the pitch of the sound effect.
    MOVE_SE_PITCH = 145
    
    # Designates alternative sound effect played with every other step.
    MOVE_SE2 = "Audio/SE/Knock"
    # Adjusts the volume of the sound effect.
    MOVE_SE2_VOLUME = 80
    # Adjusts the pitch of the sound effect.
    MOVE_SE2_PITCH = 150
    
    # Designates sound effect played when you bump into a wall.
    CLASH_SE = "Audio/SE/Blow1"
    # Adjusts the volume of the sound effect.
    CLASH_SE_VOLUME = 100
    # Adjusts the pitch of the sound effect.
    CLASH_SE_PITCH = 100
    # Adjusts the strength of the screen shake on wall bump.
    SHAKE_POWER = 5
    # Adjusts the speed of the screen shake on wall bump.
    SHAKE_SPEED = 10
    # Adjusts the length of the screen shake on wall bump.
    SHAKE_DURATION = 10
    
    # Designates sound effect played when you go through a door.
    GATE_SE = "Audio/SE/Open2"
    # Adjusts the volume of the sound effect.
    GATE_SE_VOLUME = 70
    # Adjusts the pitch of the sound effect.
    GATE_SE_PITCH = 120
    
    # Alpha value of darkness applied to walls and spaces, depending on
    # distance from the player.
    DARK_ALPHA = 50
    
    # Default darkest colour in the field of view.
    BG_COLOR = Color.new(10, 10, 10)
    
    # Base colour tint of walls.
    # The switch "COLORING_WALL_SWITCH" must be on for this to apply.
    WALL_COLOR = Color.new(255, 255, 255, 30)
    
    # Dictates text placement alignment.
    # 0 → Align Left
    # 1 → Align Center
    # 2 → Align Right
    PLACE_TEXT_ALIGNMENT = 1
    

    # Button to show entire map (Map Screen).
    AUTOMAP_BUTTON = Input::R
    # Number designation of the switch that disables the Map Screen when
    # enabled.
    DISABLE_AUTOMAP_BUTTON_SWITCH = 121
 
    # Adds padding in the Map Screen display per pixels.
    AUTO_MAPPING_WINDOW_PADDING = 6
    
    # When true, enables strafing with the LR buttons.
    ENABLE_TRANSLATION_WITH_LR = false
    # When true, you will backstep by default when "Down" is pressed.
    ENABLE_TRANSLATION_WITH_DOWN = true
    
    # Crab-style walk button. Whilst held down, you will strafe when "Left" or
    # "Right" is pressed.
    # To de-activate this function, set to　"nil".
    SIDLE_ALONG_BUTTON = Input::C
    
    # Set to true to enable "F.O.E.s".
    # Increases rendering count by 1.
    ENABLE_FOE = true
    
    # Set to true to disable movement animation.
    NOT_DRAW_MIDDLE_MOTION = false
    
    # When you pass through a door, the encounter rate is increased by this
    # variable (per steps taken).
    # i.e.: At default (5), will act as if 5 steps were taken on passage.
    GATE_ENCOUNTER = 5
    
    #-----------------------Change enything below this at your own peril.
    REGEX_3D_WALL = /<([^<]+)>/
    REGEX_3D_NAME = /([^<]*)\<.+\>/i
    
    DARK_ZONE = 10
    TYPE2_ZONE = 12
    TYPE3_ZONE = 13
    NORMAL_ZONE = 0

    #118.5%
    module ItemExValueGetter
      #--------------------------------------------------------------------------
      # ● Get Extended Parameters
      #   item : Get Extended Parameters Item
      #   name : Get Extended Parameters Name
      #--------------------------------------------------------------------------
      def self.get_ex_name(string, name)
        string.split(/[\r\n]+/).each do |line|
          elements = line.split(/\s+/)
          next unless elements.size == 2
          next unless elements[0] == name
          return elements[1]
        end
        return nil
      end
    end
  end
  
end

module Rotation
  def src_x(start_ox)
    t = Saba::Three_D::ROTATION_WAIT_TYPE
    if $game_player.rotation_right? || $game_player.rotation_left?
      if $game_player.rotation_right?
        sign = -1
      else
        sign = 1
      end
      if t == 0
        if $game_player.rotation.abs <= 6
          return $game_player.rotation * 3 * sign + start_ox
        else
          return ($game_player.rotation * $game_player.rotation.abs) / 20.0 * 6.8 * sign + start_ox
        end
      elsif t == 1
        if $game_player.rotation.abs <= 5
          return $game_player.rotation * 2.3 * sign + start_ox
        else
          return ($game_player.rotation * $game_player.rotation.abs) / 20 * 6.8 * sign + start_ox
        end
      elsif t == 2
        if $game_player.rotation.abs <= 4
          return $game_player.rotation * 2 * sign + start_ox
        else
          return ($game_player.rotation * $game_player.rotation.abs) / 20 * 6.8 * sign + start_ox
        end
      elsif t == 3
        return start_ox
      end
    else
      return start_ox
    end
  end
end

#==============================================================================
# ■ Scene_Map
#------------------------------------------------------------------------------
# 　Detects and processes changes to the 3D dungeons and 2D maps.
#==============================================================================
class Scene_Map
  #--------------------------------------------------------------------------
  # ● Initialisation
  #--------------------------------------------------------------------------
  alias saba_3d_start start
  def start
    @is_3d = $game_map.is_3d?
    saba_3d_start
    update
  end
  #--------------------------------------------------------------------------
  # ● Update Frames
  #--------------------------------------------------------------------------
  alias saba_3d_update update
  def update
    back_at_escape if $game_map.is_3d?
    saba_3d_update
    
    update_change_3d_dungeon
  end
  def back_at_escape
    return if $game_temp.escape_at_battle != true
    $game_temp.escape_at_battle = false
    $game_player.back_at_escape
  end
  def update_basic
    super 
    update_change_3d_dungeon
  end
  #--------------------------------------------------------------------------
  # ○ 3D Dungeon <-> 2D Map Changeover Update
  #--------------------------------------------------------------------------
  def update_change_3d_dungeon
    if @is_3d != $game_map.is_3d?
      @is_3d = $game_map.is_3d?
      if @is_3d
        to_3d
      else
        to_2d
      end
    end
  end
  #--------------------------------------------------------------------------
  # ○ Change to 2D Map
  #--------------------------------------------------------------------------
  def to_2d
    @spriteset.change_map_type
  end
  #--------------------------------------------------------------------------
  # ○ Change to 3D Dungeon
  #--------------------------------------------------------------------------
  def to_3d
    @spriteset.change_map_type
  end
  #--------------------------------------------------------------------------
  # ● Update on pressing Cancel Button in Menu
  #--------------------------------------------------------------------------
  alias saba_3d_update_call_menu update_call_menu
  def update_call_menu
    if $game_player.collide_with_foe?($game_player.x, $game_player.y)
      @menu_calling = false
    else
      saba_3d_update_call_menu
    end
  end
  #--------------------------------------------------------------------------
  # ● Scene Transition Update
  #--------------------------------------------------------------------------
  alias saba_3d_scene_change_ok? scene_change_ok?
  def scene_change_ok?
    return false if $game_switches[Saba::Three_D::DISABLE_KEY_INPUT]
    return saba_3d_scene_change_ok?
  end
end

class Spriteset_Map
  #--------------------------------------------------------------------------
  # ○ 3D Dungeon <-> 2D Map Changeover Update
  #--------------------------------------------------------------------------
  def change_map_type
    dispose_tilemap
    create_tilemap
  end
  #--------------------------------------------------------------------------
  # ● Create 3D Dungeon
  #--------------------------------------------------------------------------
  def create_3d
    if $dungeon.dungeon_sprite
      @main_3d = $dungeon.dungeon_sprite
    else
      @main_3d = Dungeon_Sprite.new
    end
    @main_3d.init_sprite(@viewport1)
    @main_3d.character_sprites = @character_sprites
    $dungeon.dungeon_sprite = @main_3d
  end
  #--------------------------------------------------------------------------
  # ● Create Character Sprite
  #--------------------------------------------------------------------------
  alias saba_3d_create_characters create_characters
  def create_characters
    saba_3d_create_characters
    return if $game_map.is_2d?
    @main_3d.character_sprites = @character_sprites
    @main_3d.refresh
  end
  #--------------------------------------------------------------------------
  # ● Update Frame
  #--------------------------------------------------------------------------
  alias saba_3d_update update
  def update
    saba_3d_update
    return if $game_map.is_2d?
    return if $dungeon.dungeon_sprite == nil
    @main_3d.update
  end
  #--------------------------------------------------------------------------
  # ● Create Tilemap
  #--------------------------------------------------------------------------
  alias saba_3d_create_tilemap create_tilemap
  def create_tilemap
    if $game_map.is_3d?
      create_3d
    else 
      saba_3d_create_tilemap
    end
  end
  #--------------------------------------------------------------------------
  # ● Update Tileset
  #--------------------------------------------------------------------------
  alias saba_3d_update_tileset update_tileset
  def update_tileset
    return saba_3d_update_tileset if $game_map.is_2d?
    return create_3d if $dungeon.dungeon_sprite == nil
  end
  #--------------------------------------------------------------------------
  # ● Update Tilemap
  #--------------------------------------------------------------------------
  alias saba_3d_update_tilemap update_tilemap
  def update_tilemap
    saba_3d_update_tilemap if $game_map.is_2d?
  end
  #--------------------------------------------------------------------------
  # ● Dispose Tilemap
  #--------------------------------------------------------------------------
  alias saba_3d_dispose_tilemap dispose_tilemap
  def dispose_tilemap
    @tilemap.dispose if @tilemap
    if @main_3d
      @main_3d.visible = false 
      @main_3d.dispose_sprites
    end
  end
end

class Game_Map
  include Saba::Three_D

  NORMAL = 0
  ROTATE_RIGHT = 1
  ROTATE_LEFT = 2
  MIDDLE = 3
  attr_accessor :wall_index
  attr_accessor :wall_names
  attr_accessor :animation_type
  alias saba_3d_game_map_initialize initialize
  def initialize
    @wall_index = -1
    @no_cache = false
    @animation_type = NORMAL
    @gate_map = {}
    @event_map = {}
    saba_3d_game_map_initialize
  end
  #--------------------------------------------------------------------------
  # ● Setup
  #--------------------------------------------------------------------------
  alias saba_3d_setup setup
  def setup(map_id)
    saba_3d_setup(map_id)
    init_wall_index
    @gate_map = {}
    @event_map = {}
    if $dungeon.dungeon_sprite && $dungeon.dungeon_sprite.map_id != map_id
      $dungeon.dungeon_sprite.dispose
    end
    setup_foe
  end
  #--------------------------------------------------------------------------
  # ○ FOE Initialisation
  #--------------------------------------------------------------------------
  def setup_foe
    @foe_list = []
    for event in @events.values
      @foe_list.push(event) if event.foe?
    end
  end
  #--------------------------------------------------------------------------
  # ● Refresh
  #--------------------------------------------------------------------------
  alias saba_3d_refresh refresh
  def refresh
    saba_3d_refresh
    $auto_mapping.refresh
  end
  #--------------------------------------------------------------------------
  # ● Normal Character Passage Check
  #     d : directions（2,4,6,8）
  #   Determine if passage to the tile with the specified coordinates is legal
  #--------------------------------------------------------------------------
  alias saba_3d_passable? passable?
  def passable?(x, y, d)
    return saba_3d_passable?(x, y, d) if $game_map.is_2d?
    return true if gate?(x, y, d)
    return false if clash_one_way?(x, y, d)
    return true if one_way?(x, y, d)
    return saba_3d_passable?(x, y, d)
  end
  #--------------------------------------------------------------------------
  # ○ Specified coordinates is door?
  #--------------------------------------------------------------------------
  def gate?(x, y, direction)
    return true if one_way?(x, y, direction)
    key = [@map_id, x, y, direction]
    @gate_map = {} if @gate_map == nil
    unless @gate_map[key] == nil
      return @gate_map[key] >= 0
    end
    gate = gate_internal(x, y, direction)
    @gate_map[key] = gate
    return gate >= 0
  end
  def gate_index(x, y, direction)
    return 0 if one_way?(x, y, direction)
    key = [@map_id, x, y, direction]
    @gate_map = {} if @gate_map == nil
    unless @gate_map[key] == nil
      return @gate_map[key]
    end
    gate = gate_internal(x, y, direction)
    @gate_map[key] = gate
    return gate
  end
  def clear_cache
    @event_map = {}
  end
  def silent?(x, y)
    for event in events_xy(x, y)
      return true if event.silent?
    end
    return false
  end
  def unpassable_event?(x, y)
    for event in events_xy(x, y)
      return true if (! event.through) && event.unpassable?
    end
    return false
  end
  def foe?(x, y, direction)
    case direction
    when 8
      y -= 1
    when 2
      y += 1
    when 4
      x -= 1
    when 6
      x += 1
    end
    for event in events_xy(x, y)
      return true if event.foe?
    end
    return false
  end
  alias saba_3d_events_xy events_xy
  def events_xy(x, y)
    if $game_map.is_2d?
      return saba_3d_events_xy(x, y)
    end
    key = [x, y]
    @event_map = {} if @event_map == nil
    unless @event_map[key] == nil
      return @event_map[key]
    end
    events = saba_3d_events_xy(x, y)
    @event_map[key] = events unless @no_cache
    return events
  end
  def one_way?(x, y, direction)
    return one_way_internal(x, y, direction)
  end
  #--------------------------------------------------------------------------
  # ● Collide with wall?
  #--------------------------------------------------------------------------
  def clash_wall?(x, y, direction)
    return true if ! passable?(x, y, $game_player.reverse_dir(direction))
    return true if clash_one_way?(x, y, direction)
    return false
  end
  def clash_one_way?(x, y, direction)
    case direction
    when 2
      return true if one_way?(x, y + 1, 8)
    when 4
      return true if one_way?(x - 1, y, 6)
    when 6
      return true if one_way?(x + 1, y, 4)
    when 8
      return true if one_way?(x, y - 1, 2)
    end
    return false
  end

  def wall_index(x, y, direction)
    case direction
    when 2
      return 0 if one_way?(x, y, 8)
      return -1 if clash_one_way?(x, y, 8)
      index = wall(x, y, 8)
      return index if index >= 0
    when 4
      return 0 if one_way?(x, y, 6)
      return -1 if clash_one_way?(x, y, 6)
      index = wall(x, y, 6)
      return index if index >= 0
    when 6
      return 0 if one_way?(x, y, 4)
      return -1 if clash_one_way?(x, y, 4)
      index = wall(x, y, 4)
      return index if index >= 0
    when 8
      return 0 if one_way?(x, y, 2)
      return -1 if clash_one_way?(x, y, 2)
      index = wall(x, y, 2)
      return index if index >= 0
    end
    if passable?(x, y, $game_player.reverse_dir(direction))
      return -1
    else
      return 0
    end
  end
  def wall?(x, y, direction)
    return false if gate?(x, y, direction)
    return true if wall(x, y, direction) >= 0
    case direction
    when 2
      return wall(x, y + 1, 8) >= 0
    when 4
      return wall(x - 1, y, 6) >= 0
    when 6
      return wall(x + 1, y, 4) >= 0
    when 8
      return wall(x, y - 1, 2) >= 0
    end
  end
  def wall(x, y, direction)
    return -1 if gate?(x, y, direction)
    return 0 if clash_one_way?(x, y, direction)
    tile_id = @map.data[x, y, 0]          # Get tile id
    case direction
    when 8
      return 0 if Saba::Three_D::WALL_TOP.include?(tile_id)
      return 1 if Saba::Three_D::WALL_TOP_2.include?(tile_id)
      return 0 if Saba::Three_D::WALL_TOP_3.include?(tile_id)
      return 1 if Saba::Three_D::WALL_TOP_4.include?(tile_id)
      return 0 if Saba::Three_D::WALL_TOP_5.include?(tile_id)
      return 1 if Saba::Three_D::WALL_TOP_6.include?(tile_id)
      tile_id = @map.data[x, y - 1, 0]          # Get tile id
      return 0 if Saba::Three_D::WALL_BOTTOM.include?(tile_id)
      return 1 if Saba::Three_D::WALL_BOTTOM_2.include?(tile_id)
      return 0 if Saba::Three_D::WALL_BOTTOM_3.include?(tile_id)
      return 1 if Saba::Three_D::WALL_BOTTOM_4.include?(tile_id)
      return 0 if Saba::Three_D::WALL_BOTTOM_5.include?(tile_id)
      return 1 if Saba::Three_D::WALL_BOTTOM_6.include?(tile_id)
    when 2
      return 0 if Saba::Three_D::WALL_BOTTOM.include?(tile_id)
      return 1 if Saba::Three_D::WALL_BOTTOM_2.include?(tile_id)
      return 0 if Saba::Three_D::WALL_BOTTOM_3.include?(tile_id)
      return 1 if Saba::Three_D::WALL_BOTTOM_4.include?(tile_id)
      return 0 if Saba::Three_D::WALL_BOTTOM_5.include?(tile_id)
      return 1 if Saba::Three_D::WALL_BOTTOM_6.include?(tile_id)
      tile_id = @map.data[x, y + 1, 0]          # Get tile id
      return 0 if Saba::Three_D::WALL_TOP.include?(tile_id)
      return 1 if Saba::Three_D::WALL_TOP_2.include?(tile_id)
      return 0 if Saba::Three_D::WALL_TOP_3.include?(tile_id)
      return 1 if Saba::Three_D::WALL_TOP_4.include?(tile_id)
      return 0 if Saba::Three_D::WALL_TOP_5.include?(tile_id)
      return 1 if Saba::Three_D::WALL_TOP_6.include?(tile_id)
    when 4
      return 0 if Saba::Three_D::WALL_LEFT.include?(tile_id)
      return 1 if Saba::Three_D::WALL_LEFT_2.include?(tile_id)
      return 0 if Saba::Three_D::WALL_LEFT_3.include?(tile_id)
      return 1 if Saba::Three_D::WALL_LEFT_4.include?(tile_id)
      return 0 if Saba::Three_D::WALL_LEFT_5.include?(tile_id)
      return 1 if Saba::Three_D::WALL_LEFT_6.include?(tile_id)
      tile_id = @map.data[x - 1, y, 0]          # Get tile id
      return 0 if Saba::Three_D::WALL_RIGHT.include?(tile_id)
      return 1 if Saba::Three_D::WALL_RIGHT_2.include?(tile_id)
      return 0 if Saba::Three_D::WALL_RIGHT_3.include?(tile_id)
      return 1 if Saba::Three_D::WALL_RIGHT_4.include?(tile_id)
      return 0 if Saba::Three_D::WALL_RIGHT_5.include?(tile_id)
      return 1 if Saba::Three_D::WALL_RIGHT_6.include?(tile_id)
    when 6
      return 0 if Saba::Three_D::WALL_RIGHT.include?(tile_id)
      return 1 if Saba::Three_D::WALL_RIGHT_2.include?(tile_id)
      return 0 if Saba::Three_D::WALL_RIGHT_3.include?(tile_id)
      return 1 if Saba::Three_D::WALL_RIGHT_4.include?(tile_id)
      return 0 if Saba::Three_D::WALL_RIGHT_5.include?(tile_id)
      return 1 if Saba::Three_D::WALL_RIGHT_6.include?(tile_id)
      tile_id = @map.data[x + 1, y, 0]          # Get tile id
      return 0 if Saba::Three_D::WALL_LEFT.include?(tile_id)
      return 1 if Saba::Three_D::WALL_LEFT_2.include?(tile_id)
      return 0 if Saba::Three_D::WALL_LEFT_3.include?(tile_id)
      return 1 if Saba::Three_D::WALL_LEFT_4.include?(tile_id)
      return 0 if Saba::Three_D::WALL_LEFT_5.include?(tile_id)
      return 1 if Saba::Three_D::WALL_LEFT_6.include?(tile_id)
    end
    return -1
  end
  #--------------------------------------------------------------------------
  # ● In Dark Zone?
  #--------------------------------------------------------------------------
  def dark_zone?(x, y)
    tile_id = @map.data[x, y, 2]
    return DARK_ZONE == tile_id
  end
  #--------------------------------------------------------------------------
  # ● Determine where door is relative to player
  #--------------------------------------------------------------------------
  def gate_internal(x, y, direction)
    
    tile_id = @map.data[x, y, 2]          # Get tile id
    case direction
    when 8
      return 0 if Saba::Three_D::GATE_TOP.include?(tile_id)
      return 1 if Saba::Three_D::GATE_TOP_2.include?(tile_id)
      return 0 if Saba::Three_D::GATE_TOP_3.include?(tile_id)
      tile_id = @map.data[x, y - 1, 2]          # Get tile id
      return 0 if Saba::Three_D::GATE_BOTTOM.include?(tile_id)
      return 1 if Saba::Three_D::GATE_BOTTOM_2.include?(tile_id)
      return 0 if Saba::Three_D::GATE_BOTTOM_3.include?(tile_id)
    when 2
      return 0 if Saba::Three_D::GATE_BOTTOM.include?(tile_id)
      return 1 if Saba::Three_D::GATE_BOTTOM_2.include?(tile_id)
      return 0 if Saba::Three_D::GATE_BOTTOM_3.include?(tile_id)
      tile_id = @map.data[x, y + 1, 2]          # Get tile id
      return 0 if Saba::Three_D::GATE_TOP.include?(tile_id)
      return 1 if Saba::Three_D::GATE_TOP_2.include?(tile_id)
      return 0 if Saba::Three_D::GATE_TOP_3.include?(tile_id)
    when 4
      return 0 if Saba::Three_D::GATE_LEFT.include?(tile_id)
      return 1 if Saba::Three_D::GATE_LEFT_2.include?(tile_id)
      return 0 if Saba::Three_D::GATE_LEFT_3.include?(tile_id)
      tile_id = @map.data[x - 1, y, 2]          # Get tile id
      return 0 if Saba::Three_D::GATE_RIGHT.include?(tile_id)
      return 1 if Saba::Three_D::GATE_RIGHT_2.include?(tile_id)
      return 0 if Saba::Three_D::GATE_RIGHT_3.include?(tile_id)
    when 6
      return 0 if Saba::Three_D::GATE_RIGHT.include?(tile_id)
      return 1 if Saba::Three_D::GATE_RIGHT_2.include?(tile_id)
      return 0 if Saba::Three_D::GATE_RIGHT_3.include?(tile_id)
      tile_id = @map.data[x + 1, y, 2]          # Get tile id
      return 0 if Saba::Three_D::GATE_LEFT.include?(tile_id)
      return 1 if Saba::Three_D::GATE_LEFT_2.include?(tile_id)
      return 0 if Saba::Three_D::GATE_LEFT_3.include?(tile_id)
    end
    return -1
  end
  #--------------------------------------------------------------------------
  # ● Determine if passage is one-way
  #--------------------------------------------------------------------------
  def one_way_internal(x, y, direction)
    tile_id = @map.data[x, y, 2]          # Get tile id
    case direction
    when 8
      return true if Saba::Three_D::ONE_WAY_TOP.include?(tile_id)
    when 2
      return true if Saba::Three_D::ONE_WAY_BOTTOM.include?(tile_id)
    when 4
      return true if Saba::Three_D::ONE_WAY_LEFT.include?(tile_id)
    when 6
      return true if Saba::Three_D::ONE_WAY_RIGHT.include?(tile_id)
    end

    return false
  end
  #--------------------------------------------------------------------------
  # ● Return Marker ID
  #--------------------------------------------------------------------------
  def marker(x, y, mapped)
    p x
    for event in events_xy(x, y)            # Check events in same coord
      marker = event.marker(mapped)
      return marker if marker != nil && marker > 0
    end
    return 0
  end
  def name
    return @map.name
  end
  #--------------------------------------------------------------------------
  # ● Set animation state to rotate clockwise
  #--------------------------------------------------------------------------
  def rotate_right
    @animation_type = ROTATE_RIGHT
  end
  #--------------------------------------------------------------------------
  # ● Set animation state to rotate clockwise
  #--------------------------------------------------------------------------
  def rotate_left
    @animation_type = ROTATE_LEFT
  end
  #--------------------------------------------------------------------------
  # ● Set animation state to forward/backward movement
  #--------------------------------------------------------------------------
  def middle
    @animation_type = MIDDLE
  end
  #--------------------------------------------------------------------------
  # ● Set animation state to normal
  #--------------------------------------------------------------------------
  def normal
    @animation_type = NORMAL
  end

  #--------------------------------------------------------------------------
  # ● Lateral Movement Loop On?
  #--------------------------------------------------------------------------
  alias saba_3d_setup_parallax setup_parallax
  def setup_parallax
    saba_3d_setup_parallax
    return if is_2d?
    @parallax_loop_x = false
    @parallax_loop_y = false
  end
  #--------------------------------------------------------------------------
  # ● When 3D Graphics are set to true
  #--------------------------------------------------------------------------
  def is_3d?
    return @wall_index != -1
  end
  #--------------------------------------------------------------------------
  # ● When 2D Graphics are set to true
  #--------------------------------------------------------------------------
  def is_2d?
    return @wall_index == -1
  end
  #--------------------------------------------------------------------------
  # ● Return wall type array
  #--------------------------------------------------------------------------
  def wall_types
    return @wall_types
  end
  #--------------------------------------------------------------------------
  # ○ Initialise wall types
  #--------------------------------------------------------------------------
  def init_wall_index
    $game_map.wall_names = $data_mapinfos[$game_map.map_id].name.scan(Saba::Three_D::REGEX_3D_WALL)
    if $game_map.wall_names.empty?
      $game_map.wall_index = -1 
    else
      $game_map.wall_index = $game_map.wall_names[0][0]
    end
  end
  #--------------------------------------------------------------------------
  # ○ Update FOE Movement
  #--------------------------------------------------------------------------
  def update_foe
    @no_cache = true
    for foe in @foe_list
      foe.move
    end
    @no_cache = false
  end
end



# Adjust text location slightly upwards when in a 3D Dungeon
class Window_Message
  #--------------------------------------------------------------------------
  # ● Change window placement
  #--------------------------------------------------------------------------
  alias saba_3d_update_placement update_placement
  def update_placement
    saba_3d_update_placement
    return unless $game_map.is_3d?
    self.y = @position * (Graphics.height - height) / 2 - 50 if @position == 1
  end
end

class << DataManager
  #--------------------------------------------------------------------------
  # ● Create Game Objects
  #--------------------------------------------------------------------------
  alias saba_3d_create_game_objects create_game_objects
  def create_game_objects
    saba_3d_create_game_objects
    $auto_mapping = Game_AutoMappingSet.new
    $dungeon = Dungeon_Setting.new
  end
  #--------------------------------------------------------------------------
  # ● Saving
  #--------------------------------------------------------------------------
  alias saba_3d_save_game save_game
  def save_game(index)
    listener = $auto_mapping.listener
    sprite = $dungeon.dungeon_sprite
    $auto_mapping.listener = nil
    $dungeon.dungeon_sprite = nil
    result = saba_3d_save_game(index)
    $auto_mapping.listener = listener
    $dungeon.dungeon_sprite = sprite
    return result
  end
  #--------------------------------------------------------------------------
  # ● Write additional save data to file
  #--------------------------------------------------------------------------
  alias saba_3d_make_save_contents make_save_contents
  def make_save_contents
    contents = saba_3d_make_save_contents

    contents[:auto_mapping]        = $auto_mapping
    contents[:dungeon_setting]     = $dungeon
    
    contents
  end
  #--------------------------------------------------------------------------
  # ● Read save data
  #--------------------------------------------------------------------------
  alias saba_3d_extract_save_contents extract_save_contents
  def extract_save_contents(contents)
    saba_3d_extract_save_contents(contents)
    $auto_mapping        = contents[:auto_mapping]
    $dungeon             = contents[:dungeon_setting]
  end
end

class Scene_Map
  #--------------------------------------------------------------------------
  # ● End Processing
  #--------------------------------------------------------------------------
  alias saba_3d_terminate terminate
  def terminate
    saba_3d_terminate
    $game_player.clear_input
    $game_map.normal
  end
end


class Dungeon_Setting
  attr_accessor :dungeon_sprite
  attr_accessor :darkness
  attr_accessor :move_se_enabled
  attr_accessor :move_se1
  attr_accessor :move_se1_volume
  attr_accessor :move_se1_pitch
  attr_accessor :move_se2
  attr_accessor :move_se2_volume
  attr_accessor :move_se2_pitch
  attr_accessor :clash_se
  attr_accessor :clash_se_volume
  attr_accessor :clash_se_pitch
  attr_accessor :gate_se
  attr_accessor :gate_se_volume
  attr_accessor :gate_se_pitch
  attr_accessor :bg_color
  attr_accessor :wall_color
  attr_accessor :automap_visible
  def initialize
    clear_darkness
    @move_se_enabled = Saba::Three_D::MOVE_SE_ENABLED
    @bg_color = Saba::Three_D::BG_COLOR
    @wall_color = Saba::Three_D::WALL_COLOR
    @automap_visible = true
    clear_move_se1
    clear_move_se2
    clear_clash_se
    clear_gate_se
  end
  
  def clear_darkness
    @darkness = Color.new(0, 0, 0, Saba::Three_D::DARK_ALPHA)
    @dungeon_sprite.refresh_darkness if @dungeon_sprite != nil
  end
  
  def clear_move_se1
    @move_se1 = Saba::Three_D::MOVE_SE
    @move_se1_volume = Saba::Three_D::MOVE_SE_VOLUME
    @move_se1_pitch = Saba::Three_D::MOVE_SE_PITCH
  end
  
  def clear_move_se2
    @move_se2 = Saba::Three_D::MOVE_SE2
    @move_se2_volume = Saba::Three_D::MOVE_SE2_VOLUME
    @move_se2_pitch = Saba::Three_D::MOVE_SE2_PITCH
  end
  
  def clear_clash_se
    @clash_se = Saba::Three_D::CLASH_SE
    @clash_se_volume = Saba::Three_D::CLASH_SE_VOLUME
    @clash_se_pitch = Saba::Three_D::CLASH_SE_PITCH
  end
  
  def clear_gate_se
    @gate_se = Saba::Three_D::GATE_SE
    @gate_se_volume = Saba::Three_D::GATE_SE_VOLUME
    @gate_se_pitch = Saba::Three_D::GATE_SE_PITCH
  end
  
  def darkness=(value)
    @darkness = value
    @dungeon_sprite.refresh_darkness if @dungeon_sprite != nil
  end
  
  def bg_color=(value)
    @bg_color = value
    @dungeon_sprite.refresh_darkness if @dungeon_sprite != nil
  end
  
end


class Dungeon_Sprite
  attr_writer :character_sprites
  attr_reader :map_id
  include Rotation
  def initialize
    @character_sprites = []
    @map_id = $game_map.map_id
    create_bitmaps
  end
  def visible=(b)
    return unless @sprites
    for sprite in @sprites
      sprite.visible = b
    end
  end
  #--------------------------------------------------------------------------
  # ○ Script Initialisation
  #--------------------------------------------------------------------------
  def init_sprite(viewport)
    @start_ox = Graphics.width / 2
    @offset_x = 6
    create_sprite(viewport)
    refresh
  end
  #--------------------------------------------------------------------------
  # ○ Create Sprites
  #--------------------------------------------------------------------------
  def create_sprite(viewport)
    dispose_sprites
    
    @sprites = []
    @bitmaps = []
    color = $dungeon.wall_color
    4.times do |i|
      sprite= Sprite.new(viewport)
      
      sprite.x = 0
      sprite.z = i * 2
      sprite.ox = 0
      sprite.src_rect = Rect.new(0, 0, Graphics.width, Graphics.height)
      if $game_switches[Saba::Three_D::COLORING_WALL_SWITCH]
        sprite.color.set(color.red, color.green, color.blue, color.alpha * (3 - i))
      end
      @sprites.push(sprite)
      bitmap = Bitmap.new(Graphics.width * 2, Graphics.height)
      sprite.bitmap = bitmap
      @bitmaps.push(bitmap)
    end
    @dark_zone_sprite = Sprite.new
    @dark_zone_sprite.bitmap = Cache.system("darkzone")
  end
  #--------------------------------------------------------------------------
  # ○ Update Frames
  #--------------------------------------------------------------------------
  def update
    return if @sprites == nil
    update_rotation
  end
  #--------------------------------------------------------------------------
  # ○ Update Frames During Rotation
  #--------------------------------------------------------------------------
  def update_rotation
    for sprite in @sprites
        sprite.src_rect.x = src_x(@start_ox)
      
    end
  end
  def refresh
    return if @sprites == nil
    update
    refresh_3d
  end
  #--------------------------------------------------------------------------
  # ○ Refresh 3D Graphics
  #--------------------------------------------------------------------------
  def refresh_3d
    clear_rect
    hide_all_events

    draw_background
    if $game_player.rotation_right?
      draw_rotation_right
    elsif $game_player.rotation_left?
      draw_rotation_left
    elsif $game_player.move_front?
      draw_middle
    else
      draw_normal
    end
    
    @dark_zone_sprite.visible = in_dark_zone?
  end
  #--------------------------------------------------------------------------
  # ○ Refresh Darkness
  #--------------------------------------------------------------------------
  def refresh_darkness
    @dark.dispose
    @dark = nil
    create_dark
    refresh
  end
  #--------------------------------------------------------------------------
  # ○ Clear Bitmap
  #--------------------------------------------------------------------------
  def clear_rect
    for bitmap in @bitmaps
      bitmap.clear_rect(0, 0, bitmap.width, bitmap.height)
    end
  end
  #--------------------------------------------------------------------------
  # ○ In Dark Zone?
  #--------------------------------------------------------------------------
  def in_dark_zone?
    return $game_player.in_dark_zone?
  end
  
  def hide_all_events
    for sprite in @character_sprites
      return if sprite.disposed?
      sprite.visible = false
    end
  end
end

class Game_Map
  include Rotation
  #--------------------------------------------------------------------------
  # ● Calculate X Coord of Background
  #--------------------------------------------------------------------------
  alias saba_3d_parallax_ox parallax_ox
  def parallax_ox(bitmap)
    return src_x(0) if is_3d?
    return saba_3d_parallax_ox(bitmap)
  end
  #--------------------------------------------------------------------------
  # ● Calculate Y Coord of Background
  #--------------------------------------------------------------------------
  alias saba_3d_parallax_oy parallax_oy
  def parallax_oy(bitmap)
    return 0 if is_3d?
    return saba_3d_parallax_oy(bitmap)
  end
  #--------------------------------------------------------------------------
  # ● Return background distance
  #    Updates the returned file based on current state
  #--------------------------------------------------------------------------
  def parallax_name
    if @animation_type == MIDDLE
      return @parallax_name unless @map.parallax_loop_y
      return @parallax_name + "Forward"
    end
    return @parallax_name
  end
end

class Game_Screen
  #--------------------------------------------------------------------------
  # ● Update Screen Shake
  #--------------------------------------------------------------------------
  alias saba_3d_update_shake update_shake
  def update_shake
    if $game_map.is_2d? || $game_party.in_battle
      saba_3d_update_shake
      return
    end
    # Shake only in direction where there are no walls
    if @shake_duration > 0 || @shake != 0
      delta = (@shake_power * @shake_speed * @shake_direction) / 10.0
      if @shake_duration <= 1 && @shake * (@shake + delta) < 0
        @shake = 0
      else
        @shake += delta
        @shake = 0 if @shake < 0
      end
      @shake_direction = -1 if @shake > @shake_power * 2
      @shake_direction = 1 if @shake <= 0
      @shake_duration -= 1
    end
  end
end

class Scene_Map
  alias saba_3d_post_transfer post_transfer
  def post_transfer
    $game_player.refresh_3d if $game_map.is_3d?
    saba_3d_post_transfer
    
  end
end

class Game_Interpreter
  alias saba_3d_command_201 command_201
  def command_201
    saba_3d_command_201
    
  end
  alias saba_3d_command_212 command_212
  def command_212
    if $game_map.is_3d?
      p("Unable to diplay animation in the 3DDungeon")
      return
    end
    saba_3d_command_212
  end
end