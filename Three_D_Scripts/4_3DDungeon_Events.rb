#==============================================================================
# ■ 3DDungeon - Events
#   @version 2.00 13/10/13
#   @author sabakan
#   @translator rutare
#------------------------------------------------------------------------------
# ■ Usage Explanation
# 　Place these tags in the event name field. You can put as many tags as you
#  wish, but please take into account any potential conflicts.
#
# ●<接触のみ> or <touch_only>
#   When set, the event can only be activated by touch and cannot be
#   activated by "A" button presses.
#
# ●<マーカーXXX> or <markerXXX>
#   When set, displays the specified marker on the automap/minimap for this
#   event.
#
# ●<自動マーキング> or <auto_marking>
#   When set, automatically marks this event on the automap/minimap without
#   the player needing to see it.
#
# ●<通過不可> or <unpassable>
#   When set, renders the event unpassable to the player and FOEs.
#   Is overridden when the event is set to "Through".
#
# ●<FOE> or <foe>
#   When set, the event is considered a "F.O.E.", a wandering enemy around
#   the dungeon.
#
# ●<hidden>
#   When set, the event is hidden on the automap/minimap.
#
# ●<索敵([0-9]+)([A-D])> or <search([0-9]+)([A-D])>
#   i.e.: <索敵21B> or <search21B>
#   This tag is only relevant when the <FOE> tag is set.
#   When the player enters the specified tile, the event's self switches are
#   turned on.
#
#==============================================================================
class Dungeon_Sprite
  
  def draw_event(x, depth, side, middle = false)
    event = get_event(depth, side)
    return if event == nil
    return if event.disposed?
    event.z = (8 - depth * 2) + 1
    event.draw(x + @offset_x, 222 + offset_y(depth, middle), event_scale(depth, middle))
  end
  
  def offset_y(depth, middle)
    case depth
    when 4
      return 2
    when 3
      if middle
        return 7
      else
        return 4
      end
    when 2
      if middle
        return 20
      else
        return 10
      end
    when 1
      if middle
        return 64
      else
        return 36
      end
    when 0
      return 88
    end
  end
  
  
  def event_scale(depth, middle)
    case depth
    when 0
      if middle
        return 1.7
      else
        return 1
      end
    when 1
      if middle
        return 0.75
      else
        return 0.5
      end
    when 2
      if middle
        return 0.375
      else
        return 0.25
      end
    when 3
      if middle
        return 0.1875
      else
        return 0.125
      end
    when 4
      return 0.09375
    end
  end
  
  def get_event(depth, side)
    x = $game_player.x
    y = $game_player.y
    direction = $game_player.direction
    case direction
    when 2
      return get_event_absolute_coordinate(x - side, y + depth)
    when 4
      return get_event_absolute_coordinate(x - depth, y - side)
    when 6
      return get_event_absolute_coordinate(x + depth, y + side)
    when 8
      return get_event_absolute_coordinate(x + side, y - depth)
    end
  end
  def get_event_absolute_coordinate(x, y)
    for sprite in @character_sprites
      return sprite if sprite.character.x == x && sprite.character.y == y
    end
    return nil
  end
  
  def dispose_sprites
    return if @sprites == nil
    for sprite in @sprites
      sprite.dispose
    end
    for sprite in @sprites
      sprite.dispose
    end
    for bitmap in @bitmaps
      bitmap.dispose
    end
    @bitmaps = nil
    @bitmap = nil
    @sprites = nil
    @dark_zone_sprite.dispose
  end
end

class Sprite_Character
  attr_writer :dist_x
  alias saba_3d_initialize initialize
  def initialize(viewport, character = nil)
    @dist_x = 0
    @base_x = 0
    @base_y = 0
    saba_3d_initialize(viewport, character)
  end
  alias saba_3d_update update
  def update
    return saba_3d_update if $game_map.is_2d?
    return unless self.visible 
    super
    update_bitmap
    
    update_src_rect
    self.x = @base_x - @dist_x
    self.y = @base_y
    self.opacity = @character.opacity
    self.blend_type = @character.blend_type
    self.bush_depth = @character.bush_depth
  end
  def draw(x, y, scale)
    return unless @character.is_a?(Game_Event)
    return unless @character.foe?
    @base_x = x
    @base_y = y
    self.zoom_x = scale
    self.zoom_y = scale
    update
    self.visible = (not @character.transparent)
  end
  def dist_x=(value)
    @dist_x= value
    self.x = @base_x - @dist_x
  end
end

class Game_Event
  NO_MARKER = 0
  NO_EVENT = -1
  alias saba_3d_event_initialize initialize
  def initialize(map_id, event)
    saba_3d_event_initialize(map_id, event)
    @move_wait_count = 0
    init_event_name
  end
  #--------------------------------------------------------------------------
  # ○ Get Event Name Tags
  #--------------------------------------------------------------------------
  def init_event_name
    @foe = @event.name.include?("<FOE>") || @event.name.include?("<foe>")
    @visible_in_3d = @event.name.include?("<表示>") || @event.name.include?("<show>")
    @touch_only = @event.name.include?("<接触のみ>") || @event.name.include?("<touch_only>")
    @auto_mapping = @event.name.include?("<自動マーキング>") || @event.name.include?("<auto_marking>")
    @unpassable = @event.name.include?("<通過不可>") || @event.name.include?("<unpassable>")
    @search_areas = []
    if foe?
      @pass_gate = @event.name.include?("<扉通過>") || @event.name.include?("<pass_gate>")
      @pass_wall = @event.name.include?("<壁通過>") || @event.name.include?("<pass_wall>")
      @auto_mapping = true
      @hidden = @event.name.include?("<hidden>")
      init_search_areas
    end
    @marker = NO_MARKER
    @event.name.scan(/\<marker([0-9]+)\>/i) do |matched|
      @marker = $1.to_i
    end
    @event.name.scan(/\<マーカー([0-9]+)\>/i) do |matched|
      @marker = $1.to_i
    end
  end
  #--------------------------------------------------------------------------
  # ○ Return Marker ID
  #--------------------------------------------------------------------------
  def marker(mapped)
    unless mapped
      return NO_MARKER unless auto_mapping?
    end
    dynamic = dynamic_marker
    if foe? && ! @hidden
      return NO_MARKER if dynamic == NO_EVENT
      return foe_marker 
    end
    return dynamic if (dynamic != NO_MARKER && dynamic != NO_EVENT)
    return @marker if mapped
    return 0
  end
  def dynamic_marker
    met = false
    for page in @event.pages.reverse
      if conditions_met?(page)
        met = true
        if page.list.size > 1
          command = page.list[0]
          if command.code == 108
            command.parameters[0].scan(/\<marker([0-9]+)\>/i) do |matched|
              return $1.to_i
            end
            command.parameters[0].scan(/\<マーカー([0-9]+)\>/i) do |matched|
              return $1.to_i
            end
          end
          break
        else
          return NO_EVENT
        end
      end
    end
    return NO_EVENT unless met
    return NO_MARKER
  end
  def foe_marker
    return NO_MARKER if @erased
    if @move_type == 2
      offset = 4
    else
      offset = 0
    end
    case @direction
    when 8
      return Saba::Three_D::FOE_MARKER + 1 + offset
    when 2
      return Saba::Three_D::FOE_MARKER + 2 + offset
    when 4
      return Saba::Three_D::FOE_MARKER + 3 + offset
    when 6
      return Saba::Three_D::FOE_MARKER + 4 + offset
    end
  end
  def foe?
    return @foe
  end
  def touch_only?
    return true if foe?
    return @touch_only
  end
  def unpassable?
    return @unpassable
  end
  def auto_mapping?
    return @auto_mapping
  end
  alias saba_3d_update_self_movement update_self_movement
  def update_self_movement
    return saba_3d_update_self_movement unless @foe
  end
  #--------------------------------------------------------------------------
  # ○ FOE Movement
  #--------------------------------------------------------------------------
  def move
    update_can_move_count
    unless can_move?
      watch_search_area
      return 
    end
    @move_wait_count= 0
    saba_3d_update_self_movement
    watch_search_area
  end
  #--------------------------------------------------------------------------
  # ○ FOE Movement Allowence
  #--------------------------------------------------------------------------
  def update_can_move_count
    @move_wait_count += 1
  end
  #--------------------------------------------------------------------------
  # ○ FOE Wait Time
  #--------------------------------------------------------------------------
  def move_wait_count_needs
    case @move_frequency
    when 1
      return 8
    when 2
      return 4
    when 3
      return 3
    when 4
      return 2
    end
    return 1
  end
  #--------------------------------------------------------------------------
  # ○ Can FOE Move?
  #--------------------------------------------------------------------------
  def can_move?
    return move_wait_count_needs <= @move_wait_count
  end
  #--------------------------------------------------------------------------
  # ○ Agression Range Initialisation
  #--------------------------------------------------------------------------
  def init_search_areas
    @event.name.scan(/\<索敵([0-9]+)([A-D])\>/i) do |matched|
      @search_areas.push(SearchArea.new($1.to_i, $2))
    end
    @event.name.scan(/\<search([0-9]+)([A-D])\>/i) do |matched|
      @search_areas.push(SearchArea.new($1.to_i, $2))
    end
  end
  #--------------------------------------------------------------------------
  # ○ Player in Agression Range?
  #--------------------------------------------------------------------------
  def watch_search_area
    return if @starting
    changed = false
    for search_area in @search_areas
      key = [$game_map.map_id, @event.id, search_area.self_switch_ch]
      region = $game_map.region_id($game_player.x, $game_player.y)
      in_area = search_area.region_id == region
      unless changed
        if in_area
          changed = true if $game_self_switches[key] != true
          $game_self_switches[key] = true
        else
          changed = true if $game_self_switches[key] == true
          $game_self_switches[key] = false
        end
      end
    end
    $game_map.need_refresh = true if changed
  end
  #--------------------------------------------------------------------------
  # ● Forward Movement
  #     d       : direction（2,4,6,8）
  #     turn_ok : Whether turning is allowed
  #--------------------------------------------------------------------------
  def move_straight(d, turn_ok = true)
    super
    return unless foe?
    if @move_succeed
      check_event_trigger_touch(x, y)
    end
  end
  #--------------------------------------------------------------------------
  # ● Check if touching event in front
  #--------------------------------------------------------------------------
  alias saba_3d_check_event_trigger_touch_front check_event_trigger_touch_front
  def check_event_trigger_touch_front
    return if foe? && $game_map.wall?(@x, @y, @direction)
    saba_3d_check_event_trigger_touch_front
  end
  #--------------------------------------------------------------------------
  # ● Confirm event interaction
  #--------------------------------------------------------------------------
  def check_event_trigger_touch(x, y)
   
    #return if $game_map.interpreter.running? *Why did I put this here? ~Sabakan
  
    if @trigger == 2 && $game_player.pos?(x, y)
      start if !jumping? && (normal_priority? || foe?)
    end
  end
  #--------------------------------------------------------------------------
  # ● Check if character can pass normally
  #     d : direction（2,4,6,8）
  #    Determines if the tile in the specified coordinates is passable
  #--------------------------------------------------------------------------
  def passable?(x, y, d)
    return super if $game_map.is_2d?
    return true if $game_map.gate?(x, y, d)
    return false if $game_map.wall?(x, y, d)
    return super
  end
  #--------------------------------------------------------------------------
  # ● Check if event was erased
  #--------------------------------------------------------------------------
  def erased?
    return true if @erased
    for page in @event.pages.reverse
      if conditions_met?(page)
        return if page.list.size == 0
      end
    end
    return true
  end
end

class SearchArea
  attr_reader :region_id
  attr_reader :self_switch_ch
  def initialize(region_id, self_switch_ch)
    @region_id = region_id
    @self_switch_ch = self_switch_ch
  end
end