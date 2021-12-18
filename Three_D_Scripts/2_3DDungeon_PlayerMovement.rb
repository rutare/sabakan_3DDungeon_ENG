#==============================================================================
# ■ 3DDungeon - Player Movement
#   @version 2.00 13/10/13
#   @author sabakan
#   @translator rutare
#------------------------------------------------------------------------------
# ● Internally, it allows movement funtionally identical to the base game, but
#   it also has added features such as strafing and backpedaling.
#   There is also a "wall bump" feature that makes it so that you can waste a
#   turn of movement by clashing with walls, like games such as
#   Stranger Of Sword City, Demon Gaze, or anything else devoloped by
#   Experience Inc.
#==============================================================================
class Game_Character
  attr_reader :rotation
  attr_reader :wait
  
  alias saba_3d_initialize initialize
  def initialize
    saba_3d_initialize
    @wait = 0
    @rotation = 0
  end

  def pass_gate?
    return true
  end
  def pass_wall?
    return false
  end
  alias saba_3d_update update
  def update
    if $game_map.is_2d?
      saba_3d_update
      return
    end
    @rotation -= 2 if @wait > 0
    @wait -= 1 if @wait > 0
    if @wait == 0
      if @rotation_right
        @moved = false
        @rotation_right = false
        $game_map.normal
        refresh_3d
      elsif @rotation_left
        @moved = false
        @rotation_left = false
        $game_map.normal
        refresh_3d
      elsif @move_front
        @moved = false
        @move_front = false
        refresh_3d
        $game_map.normal
        
        if $game_player.dash?
          @wait = (Saba::Three_D::DASH_WAIT / 4 * 3).round
        else
          @wait = (Saba::Three_D::NORMAL_WAIT / 4 * 3).round
        end
      end
      if @moved || @clash
        @moved = false
        @clash = false
        $game_map.normal
       refresh_3d
      end
      
    end
    saba_3d_update
  end
  alias saba_3d_char_moving? moving?
  def moving?
    return saba_3d_char_moving? if $game_map.is_2d?
    return false
  end
  def turn_to_wall?(x, y)
    return $game_map.clash_wall?(@x, @y, 6) if x > @x
    return $game_map.clash_wall?(@x, @y, 4) if x < @x
    return $game_map.clash_wall?(@x, @y, 2) if y > @y
    return $game_map.clash_wall?(@x, @y, 8) if y < @y
  end
  def turn_to_gate?(x, y)
    return $game_map.gate?(@x, @y, 6) if x > @x
    return $game_map.gate?(@x, @y, 4) if x < @x
    return $game_map.gate?(@x, @y, 2) if y > @y
    return $game_map.gate?(@x, @y, 8) if y < @y
  end
  #--------------------------------------------------------------------------
  # ● Refresh the 3D Screen
  #--------------------------------------------------------------------------
  def refresh_3d
    $dungeon.dungeon_sprite.refresh unless $dungeon.dungeon_sprite == nil
  end
end

class Game_Player
  include Saba::Three_D
  alias saba_3d_gp_initialize initialize
  def initialize
    saba_3d_gp_initialize
    @next_input = 0
    @moved = false
    @rotation_right = false
    @rotation_left = false
    @move_front = false
    @gate = false
    @clash = false
    @translate = false
    @move_index = 0
    @wait = 0
  end
  #--------------------------------------------------------------------------
  # ○ Check if in Dark Zone
  #--------------------------------------------------------------------------
  def in_dark_zone?
    return false if $game_map.is_2d?
    return $game_map.dark_zone?(@x, @y)
  end
    #--------------------------------------------------------------------------
  # ● Check if touching an event directly in front
  #--------------------------------------------------------------------------
  def check_event_trigger_touch_front
    return super if $game_map.is_2d?
    return false if $game_map.interpreter.running?
    return false if $game_map.wall?(x, y, @direction)

    super
  end
  #--------------------------------------------------------------------------
  # ● Activate forward event
  #     triggers : Trigger Array
  #--------------------------------------------------------------------------
  alias saba_3d_check_event_trigger_there check_event_trigger_there
  def check_event_trigger_there(triggers)
    return saba_3d_check_event_trigger_there(triggers) if $game_map.is_2d?
    
    return false if $game_map.interpreter.running?
    return false if $game_map.wall?(x, y, @direction)
    result = false
    front_x = $game_map.x_with_direction(@x, @direction)
    front_y = $game_map.y_with_direction(@y, @direction)
    for event in $game_map.events_xy(front_x, front_y)
      next if event.touch_only?
      if triggers.include?(event.trigger) and event.priority_type == 1
        event.start
        result = true
      end
    end
    if result == false and $game_map.counter?(front_x, front_y)
      front_x = $game_map.x_with_direction(front_x, @direction)
      front_y = $game_map.y_with_direction(front_y, @direction)
      for event in $game_map.events_xy(front_x, front_y)
        if triggers.include?(event.trigger) and event.priority_type == 1
          event.start
          result = true
        end
      end
    end
    return result
  end
  #--------------------------------------------------------------------------
  # ○ Clear inputs
  #--------------------------------------------------------------------------
  def clear_input
    @next_input = 0
  end
  #--------------------------------------------------------------------------
  # ● Input button processing
  #--------------------------------------------------------------------------
  alias saba_3d_move_by_input move_by_input
  def move_by_input
    return if $game_switches[DISABLE_KEY_INPUT]
    return if @move_route_forcing
    if $game_map.is_2d?
      saba_3d_move_by_input
      return
    end
    @next_input = 0 if $game_message.visible
    return unless inputable?
    return if $game_map.interpreter.running?
    return if next_input
    
    if moving? || @wait > 0
      set_next_input
      return
    end
    
    if Input.press?(SIDLE_ALONG_BUTTON)
      unless Input.press?(Input::UP)
        translate
        return
      end
    end
    
    if Input.trigger?(Input::LEFT)
      input_left
    elsif Input.trigger?(Input::RIGHT)
      input_right
    elsif Input.trigger?(Input::DOWN)
      if ENABLE_TRANSLATION_WITH_DOWN
        input_translate_down
      else
        input_down
      end
    elsif Input.press?(Input::DOWN)
      return unless ENABLE_TRANSLATION_WITH_DOWN
      input_down
    elsif Input.press?(Input::UP)
      input_up
      @move_failed = false
    elsif Input.press?(Input::L)
      return unless ENABLE_TRANSLATION_WITH_LR
      input_translate_left
    elsif Input.press?(Input::R)
      return unless ENABLE_TRANSLATION_WITH_LR
      input_translate_right
    end
  end
  #--------------------------------------------------------------------------
  # ● Process Movement
  #--------------------------------------------------------------------------
  def translate
    if Input.press?(Input::LEFT)
      input_translate_left
    elsif Input.press?(Input::RIGHT)
      input_translate_right
    elsif Input.press?(Input::DOWN)
      input_translate_down
    elsif Input.press?(Input::L)
      return unless ENABLE_TRANSLATION_WITH_LR
      input_translate_left
    elsif Input.press?(Input::R)
      return unless ENABLE_TRANSLATION_WITH_LR
      input_translate_right
    end
  end
  #--------------------------------------------------------------------------
  # ● Subsequent Movement Processing
  #--------------------------------------------------------------------------
  def set_next_input
    if Input.press?(Input::UP)
      return
    elsif Input.trigger?(Input::RIGHT)
      @translate = Input.press?(SIDLE_ALONG_BUTTON)
      @next_input = 6
    elsif Input.trigger?(Input::DOWN)
      @translate = Input.press?(SIDLE_ALONG_BUTTON) || ENABLE_TRANSLATION_WITH_DOWN
      @next_input = 2
    elsif Input.trigger?(Input::LEFT)
      @translate = Input.press?(SIDLE_ALONG_BUTTON)
      @next_input = 4
    elsif Input.trigger?(Input::R)
      return unless ENABLE_TRANSLATION_WITH_LR
      @translate = true
      @next_input = 6
    elsif Input.trigger?(Input::L)
      return unless ENABLE_TRANSLATION_WITH_LR
      @translate = true
      @next_input = 4
    end
  end
  def process_unpassable_event(direction)
    return false if $game_map.wall?(@x, @y, direction)
    return false if $game_map.clash_wall?(@x, @y, direction)
    case direction
    when 2
      if $game_map.unpassable_event?(@x, @y + 1)
        check_event_trigger_touch(@x, @y + 1)
        return true
      end
    when 4
      if $game_map.unpassable_event?(@x - 1, @y)
        check_event_trigger_touch(@x - 1, @y)
        return true
      end
    when 6
      if $game_map.unpassable_event?(@x + 1, @y)
        check_event_trigger_touch(@x + 1, @y)
        return true
      end
    when 8
      if $game_map.unpassable_event?(@x, @y - 1)
        check_event_trigger_touch(@x, @y - 1)
        return true
      end
    end
    return false
  end
  #--------------------------------------------------------------------------
  # ● Play movement SE
  #    If MOVE_SE_ENABLED is set to false, this will be skipped
  #--------------------------------------------------------------------------
  def play_move_se
    return unless $dungeon.move_se_enabled
    if @move_index == 1
      Audio.se_play($dungeon.move_se2, $dungeon.move_se2_volume, $dungeon.move_se2_pitch)
      @move_index = 0
    else
      Audio.se_play($dungeon.move_se1, $dungeon.move_se1_volume, $dungeon.move_se1_pitch)
      @move_index = 1
    end
  end
  #--------------------------------------------------------------------------
  # ● Enact movement wait time
  #    @wait is assigned based on setting in Main
  #--------------------------------------------------------------------------
  def calculate_wait
    if $game_player.dash?
      @wait = Saba::Three_D::DASH_WAIT
    elsif @translate
      @wait = Saba::Three_D::TRANSLATION_WAIT
    else
      @wait = Saba::Three_D::NORMAL_WAIT
    end
  end
  #--------------------------------------------------------------------------
  # ● When an impassable event is behind a door
  #--------------------------------------------------------------------------
  def touch_gate_event(direction)
    case direction
    when 2;  $auto_mapping.mapping($game_map.map_id, @x, @y + 1) 
    when 4;  $auto_mapping.mapping($game_map.map_id, @x - 1, @y) 
    when 6;  $auto_mapping.mapping($game_map.map_id, @x + 1, @y) 
    when 8;  $auto_mapping.mapping($game_map.map_id, @x, @y - 1) 
    end
    @gate = false
    play_gate_se
    @wait = 1
    @move_front = false
    @next_input = 0
  end
  #--------------------------------------------------------------------------
  # ● Play door opening SE
  #--------------------------------------------------------------------------
  def play_gate_se
    Audio.se_play($dungeon.gate_se, $dungeon.gate_se_volume, $dungeon.gate_se_pitch)
  end
  #--------------------------------------------------------------------------
  # ● Play Screen Shake
  #--------------------------------------------------------------------------
  def clash
    @move_front = false
    @clash = true
    Audio.se_play($dungeon.clash_se, $dungeon.clash_se_volume, $dungeon.clash_se_pitch)
    $game_map.screen.start_shake(Saba::Three_D::SHAKE_POWER, Saba::Three_D::SHAKE_SPEED, Saba::Three_D::SHAKE_DURATION)
   # $game_map.interpreter.wait(Saba::Three_D::SHAKE_DURATION)
  end
  #--------------------------------------------------------------------------
  # ● Button input is possible?
  #--------------------------------------------------------------------------
  def inputable?
    return false if @move_route_forcing         # In forced movement
    return false if @vehicle_getting_on         # Getting on vehicle
    return false if @vehicle_getting_off        # Getting off vehicle
    return false if $game_message.visible       # Message playback
    return false if in_airship? and not $game_map.airship.movable?
    return false if $game_temp.escape_at_battle
    return true
  end
  #--------------------------------------------------------------------------
  # ● Button input possible, checking if passage is possible
  #--------------------------------------------------------------------------
  def next_input
    return false if @wait > 0
    return false if @next_input == 0
    return false if moving?
    next_input = @next_input
    @next_input = 0
    case next_input
    when 2
      if @translate
        input_translate_down
      else
        input_down
      end
    when 4
      if @translate
        input_translate_left
      else
        input_left
      end
    when 6
      if @translate
        input_translate_right
      else
        input_right
      end
    end
    @old = 0
    return true
  end
  #--------------------------------------------------------------------------
  # ● Return Determination
  #--------------------------------------------------------------------------
  def moving?
    if @wait > 0
      return true if (! rotation_right?) && (! rotation_left?) && (! @clash)
    end
    return super
  end
  #--------------------------------------------------------------------------
  # ● Update Movement Route
  #--------------------------------------------------------------------------
  def update_routine_move
    if @wait_count > 0 || rotation_right? || rotation_left? || moving?
     
    else
      if @next_input > 0
        next_input
        return
      end
      @move_succeed = true
      command = @move_route.list[@move_route_index]
      if command
        process_move_command(command)
        advance_move_route_index
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● Movement Input Processing
  #--------------------------------------------------------------------------
  def process_move_command(command)
    return super(command) if $game_map.is_2d?
    
    params = command.parameters
    case command.code
    when ROUTE_MOVE_DOWN;
      case @direction
        when 2;  input_up
        when 4;  input_translate_left
        when 6;  input_translate_right
        when 8;  input_translate_down
      end
    when ROUTE_MOVE_LEFT;
      case @direction
        when 2;  input_translate_right
        when 4;  input_up
        when 6;  input_translate_down
        when 8;  input_translate_left
      end
    when ROUTE_MOVE_RIGHT;
      case @direction
        when 2;  input_translate_left
        when 4;  input_translate_down
        when 6;  input_up
        when 8;  input_translate_right
      end
    when ROUTE_MOVE_UP;
      case @direction
        when 2;  input_translate_down
        when 4;  input_translate_right
        when 6;  input_translate_left
        when 8;  input_up
      end
    when ROUTE_TURN_DOWN;
      case @direction
        when 2;  
        when 4;  input_left
        when 6;  input_right
        when 8;  input_down
      end
    when ROUTE_TURN_LEFT;
      case @direction
        when 2;  input_right
        when 4;  
        when 6;  input_down
        when 8;  input_left
      end
    when ROUTE_TURN_RIGHT;
      case @direction
        when 2;  input_left
        when 4;  input_down
        when 6;  
        when 8;  input_right
      end
    when ROUTE_TURN_UP;
      case @direction
        when 2;  input_down
        when 4;  input_right
        when 6;  input_left
        when 8;  
      end
    when ROUTE_MOVE_FORWARD;      input_up;
    when ROUTE_MOVE_BACKWARD;     input_translate_down;
    else
      return super(command)
    end
  end
  #--------------------------------------------------------------------------
  # ● Move forward along assigned route
  #--------------------------------------------------------------------------
  def advance_move_route_index
    return super if $game_map.is_2d?
    if ! @move_succeed && ! @move_route.skippable
      # When movement blocked, end processing
      process_route_end
    else
      return super
    end
  end
  #--------------------------------------------------------------------------
  # ● Processing when pressing the "Up" key
  #--------------------------------------------------------------------------
  def input_up
    @last_x = @x
    @last_y = @y
    @translate = false
    return if process_unpassable_event(direction)
    @gate = $game_map.gate?(@x, @y, @direction)
    @move_front = true
    calculate_wait
    unless Saba::Three_D::NOT_DRAW_MIDDLE_MOTION
      $game_map.middle
      refresh_3d
    end
     
    move_straight(@direction)
    if Saba::Three_D::NOT_DRAW_MIDDLE_MOTION
      @move_front = false
      refresh_3d
      @move_front = true
    end
    unless @move_succeed
      if @old == 8
        unless Input.trigger?(Input::UP) #Prevents wall collision loop
          @move_front = false
          @wait = 0
          $game_map.normal
          refresh_3d
          return
        end
      end
      @old = 8
      if @gate
        touch_gate_event(@direction)
      else
        
        if $game_map.wall?(@x, @y, @direction)
          clash 
        elsif $game_map.foe?(@x, @y, @direction)
          clash_to_foe
        else
          
        end
      end
    else
      play_move_se
    end
  end
  #--------------------------------------------------------------------------
  # ● Processing when pressing the "Left" key
  #--------------------------------------------------------------------------
  def input_left
    @translate = false
    unless Saba::Three_D::NOT_DRAW_MIDDLE_MOTION
      $game_map.rotate_left
      @old = 4
      @rotation_left = true
      @rotation_right = false
      @move_front = false
      @wait = rotation_wait
      @rotation = 21
      refresh_3d
    end
    case @direction
    when 2;  set_direction(6)
    when 4;  set_direction(2)
    when 6;  set_direction(8)
    when 8;  set_direction(4)
    end
    $auto_mapping.update_direction
    refresh_3d if Saba::Three_D::NOT_DRAW_MIDDLE_MOTION
  end
  #--------------------------------------------------------------------------
  # ○ Rotation wait time processing
  #--------------------------------------------------------------------------
  def rotation_wait
    case Saba::Three_D::ROTATION_WAIT_TYPE
    when 1
      return 17
    when 2
      return 14
    when 3
      return 0
    end
    return 21
  end
  #--------------------------------------------------------------------------
  # ● Processing when pressing the "Right" key
  #--------------------------------------------------------------------------
  def input_right
    @translate = false
    unless Saba::Three_D::NOT_DRAW_MIDDLE_MOTION
      $game_map.rotate_right
      @old = 6
      @rotation_right = true
      @wait = rotation_wait
      @rotation = 21
      refresh_3d
    end
    case @direction
    when 2;  set_direction(4)
    when 4;  set_direction(8)
    when 6;  set_direction(2)
    when 8;  set_direction(6)
    end
    $auto_mapping.update_direction
    refresh_3d if Saba::Three_D::NOT_DRAW_MIDDLE_MOTION
  end
  #--------------------------------------------------------------------------
  # ● Processing when pressing the "Down" key
  #--------------------------------------------------------------------------
  def input_down
    if Saba::Three_D::ENABLE_TRANSLATION_WITH_DOWN
      input_translate_down
    else
      input_right
      if Saba::Three_D::NOT_DRAW_MIDDLE_MOTION
        input_right
      else
        @next_input = 6
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● Return Translation Legality
  #--------------------------------------------------------------------------
  alias saba_3d_movable? movable?
  def movable?
    return false if @wait > 0
    return saba_3d_movable?
  end
  #--------------------------------------------------------------------------
  # ● Move to Location Processing
  #--------------------------------------------------------------------------
  alias saba_3d_moveto moveto
  def moveto(x, y)
    saba_3d_moveto(x, y)
    @moved = false
    @last_x = @x
    @last_y = @y
    return if $auto_mapping == nil
    $auto_mapping.mapping($game_map.map_id, x, y)
  end
  def update_move
    super
    return if $game_map.is_2d?
    if ((@real_x - @x).abs <= 0.5) || ((@real_y - @y).abs <= 0.5)
      if @moved == false
        @moved = true
        $auto_mapping.mapping($game_map.map_id, @x, @y)
        if @gate
          @gate = false
          @through_gate = true
          play_gate_se
        end
      end
    end
  end
  #--------------------------------------------------------------------------
  # ● Return Turning Right
  #--------------------------------------------------------------------------
  def rotation_right?
    return @rotation_right
  end
  #--------------------------------------------------------------------------
  # ● Return Turning Left
  #--------------------------------------------------------------------------
  def rotation_left?
    return @rotation_left
  end
  #--------------------------------------------------------------------------
  # ● Return Moving Forward Evaluation
  #--------------------------------------------------------------------------
  def move_front?
    @move_front
  end
  alias saba_3d_refresh refresh
  def refresh
    saba_3d_refresh
    return if $game_map.is_2d?
    refresh_3d
    $auto_mapping.mapping($game_map.map_id, @x, @y) 
  end
  def left_direction
    case @direction
    when 2; return 6
    when 4; return 2
    when 6; return 8
    when 8; return 4
    end
  end
  #--------------------------------------------------------------------------
  # ● Strafe Action Input Processing
  #--------------------------------------------------------------------------
  def input_translate_left
    @translate = true
    return if process_unpassable_event(left_direction)
    @gate = $game_map.gate?(@x, @y, left_direction)
    case @direction
    when 2;  translate_right
    when 4;  translate_down
    when 6;  translate_up
    when 8;  translate_left
    end
    calculate_wait
    if @move_failed
      if @old == 4
        unless Input.trigger?(Input::LEFT) #Prevents wall collision loop
          @move_front = false
          @wait = 0
          refresh_3d
          return
        end
      end
      @old = 4
      
      if $game_map.foe?(@x, @y, left_direction)
        play_gate_se if @gate
        clash_to_foe
      elsif @gate
        touch_gate_event(left_direction)
      else
        clash
      end
    else
      @old = 0
      play_move_se
    end
  end
  def right_direction
    case @direction
    when 2; return 4
    when 4; return 8
    when 6; return 2
    when 8; return 6
    end
  end
  #--------------------------------------------------------------------------
  # ● Leftward strafe movement processing
  #--------------------------------------------------------------------------
  def input_translate_right
    @translate = true
    return if process_unpassable_event(right_direction)
    @gate = $game_map.gate?(@x, @y, right_direction)
    case @direction
    when 2;  translate_left
    when 4;  translate_up
    when 6;  translate_down
    when 8;  translate_right
    end
    calculate_wait
    if @move_failed
      if @old == 6
        unless Input.trigger?(Input::RIGHT) # Prevents wall collision loop
          @move_front = false
          @wait = 0
          refresh_3d
          return
        end
      end
      @old = 6
      if $game_map.foe?(@x, @y, right_direction)
        play_gate_se if @gate
        clash_to_foe
      elsif @gate
        touch_gate_event(right_direction)
      else
        clash
      end
    else
      @old = 0
      play_move_se
    end
  end
  def clash_to_foe
    @move_front = false
    @clash = true
  end
  def down_direction
    case @direction
    when 2; return 8
    when 4; return 6
    when 6; return 4
    when 8; return 2
    end
  end
  def check_event_trigger_touch_down
    case @direction
    when 2
      check_event_trigger_touch(@x, @y - 1)
    when 4
      check_event_trigger_touch(@x + 1, @y)
    when 6
      check_event_trigger_touch(@x - 1, @y)
    when 8
      check_event_trigger_touch(@x, @y + 1)
    end
  end
  #--------------------------------------------------------------------------
  # ● Backstep movement processing
  #--------------------------------------------------------------------------
  def input_translate_down
    @translate = false
    return if process_unpassable_event(down_direction)
    @gate = $game_map.gate?(@x, @y, down_direction)
    @move_front = true
    calculate_wait
    if $game_map.foe?(@x, @y, down_direction)
      play_gate_se if @gate
      # To ensure forward movement animation is not drawn
      clash_to_foe
      check_event_trigger_touch_down
      return
    end
    
    unless Saba::Three_D::NOT_DRAW_MIDDLE_MOTION
      $game_map.middle
    end
    case @direction
    when 2;  translate_up
    when 4;  translate_right
    when 6;  translate_left
    when 8;  translate_down
    end
    
    if Saba::Three_D::NOT_DRAW_MIDDLE_MOTION
      @move_front = false
      refresh_3d
      @move_front = true
    else
      refresh_3d
    end
    
    if @move_failed
      if @old == 2
        unless Input.trigger?(Input::DOWN) #Prevents wall collision loop
          @move_front = false
          @wait = 0
          refresh_3d
          return
        end
      end
      @old = 2
      $game_map.normal
      if @gate
        @move_front = false
        refresh_3d
        touch_gate_event(down_direction)
      else
        clash
        refresh_3d
      end
    else
      play_move_se
    end
  end
  #--------------------------------------------------------------------------
  # ● Translate Player Left
  #--------------------------------------------------------------------------
  def translate_left
    @last_x = @x
    @last_y = @y
    if passable?(@x, @y, 4)                  # Passage Okay check
      @x = $game_map.round_x(@x-1)
     # @real_x = (@x+1)*256
      increase_steps
      @move_failed = false
      @move_direction = 4
    else
      @move_failed = true
    end
  end
  #--------------------------------------------------------------------------
  # ● Translate Player Right
  #--------------------------------------------------------------------------
  def translate_right
    @last_x = @x
    @last_y = @y
    if passable?(@x, @y, 6)                  # Passage Okay check
      @x = $game_map.round_x(@x+1)
     # @real_x = (@x-1)*256
      increase_steps
      @move_failed = false
      @move_direction = 6
    else
      @move_failed = true
    end
  end
  #--------------------------------------------------------------------------
  # ● Translate Player Backward
  #--------------------------------------------------------------------------
  def translate_down
    @last_x = @x
    @last_y = @y
    if passable?(@x, @y, 2)                  # Passage Okay check
      @y = $game_map.round_y(@y+1)
      @real_y = (@y-1)*256
      increase_steps
      @move_failed = false
      @move_direction = 2
    else
      @move_failed = true
    end
  end
  alias saba_3d_update_encounter update_encounter
  def update_encounter
    
    if $game_map.is_2d?
      saba_3d_update_encounter
      return 
    end
    $game_map.clear_cache
    $game_map.update_foe
    unless $game_map.any_event_starting?
      saba_3d_update_encounter
    end
    $auto_mapping.update_markers
    refresh_3d if Saba::Three_D::ENABLE_FOE
  end
  #--------------------------------------------------------------------------
  # ● Translate Player Forward
  #--------------------------------------------------------------------------
  def translate_up
    @last_x = @x
    @last_y = @y
    if passable?(@x, @y, 8)                  # Passage Okay check
      @y = $game_map.round_y(@y-1)
      @real_y = (@y+1)*256
      increase_steps
      @move_failed = false
      @move_direction = 8
    else
      @move_failed = true
    end
  end
  def back_at_escape
    return if $game_switches[Saba::Three_D::BACK_AT_ESCAPE_SWITCH] != true
    return if collide_with_characters?(@last_x, @last_y)
    return if collide_with_foe?(@last_x, @last_y)
    moveto(@last_x, @last_y)
    refresh_3d
    $auto_mapping.refresh
  end
  #--------------------------------------------------------------------------
  # ● On collision with a FOE
  #--------------------------------------------------------------------------
  def collide_with_foe?(x, y)
    $game_map.events_xy_nt(x, y).any? do |event|
      return true if event.foe? && ! event.erased?
    end
    return false
  end
  alias saba_3d_perform_transfer perform_transfer
  def perform_transfer
    @move_direction = 0
    saba_3d_perform_transfer
  end
  def encounter_count
    if @through_gate && $game_map.is_3d?
      @through_gate = false
      return @encounter_count - Saba::Three_D::GATE_ENCOUNTER
    else
      return @encounter_count
    end 
  end
  def passable?(x, y, d)
    return super if $game_map.is_2d?
    x2 = $game_map.round_x_with_direction(x, d)
    y2 = $game_map.round_y_with_direction(y, d)
    return false unless $game_map.valid?(x2, y2)
    return true if @through || debug_through?
    return false unless map_passable?(x, y, d)
    unless $game_map.one_way?(x, y, d)
      return false unless map_passable?(x2, y2, reverse_dir(d))
    end
    return false if collide_with_characters?(x2, y2)
    return true
  end
  #--------------------------------------------------------------------------
  # ● Step Count Increase
  #--------------------------------------------------------------------------
  alias saba_3d_increase_steps increase_steps
  def increase_steps
    saba_3d_increase_steps
    return if $game_map.is_2d?
    type = $game_map.tile_type(@x, @y)
    case type
      when NORMAL_ZONE
        $game_variables[TILE_TYPE_VARIABLE] = 0
      when TYPE2_ZONE
        $game_variables[TILE_TYPE_VARIABLE] = 1
      when TYPE3_ZONE
        $game_variables[TILE_TYPE_VARIABLE] = 2
    end
  end
end

class Game_Temp
  #--------------------------------------------------------------------------
  # ● Open Instance Variable
  #--------------------------------------------------------------------------
  attr_accessor   :escape_at_battle 
end

class << BattleManager
  #--------------------------------------------------------------------------
  # ● Battle Conclusion
  #     result : result（0:Victory 1:Escape 2:Defeat）
  #--------------------------------------------------------------------------
  alias saba_3d_battle_end battle_end
  def battle_end(result)
    if result == 1
      if $game_switches[Saba::Three_D::BACK_AT_ESCAPE_SWITCH] == true
        $game_temp.escape_at_battle = true
      end
    end
    saba_3d_battle_end(result)
  end
end

class Game_Character
  #--------------------------------------------------------------------------
  # ● Movement Command Processing
  #--------------------------------------------------------------------------
  alias saba_3_update_routine_move update_routine_move
  def update_routine_move
    saba_3_update_routine_move
    if @move_succeed && $game_map.is_3d?
      $game_map.clear_cache
      $game_player.refresh_3d 
      $auto_mapping.refresh
    end
  end
end
