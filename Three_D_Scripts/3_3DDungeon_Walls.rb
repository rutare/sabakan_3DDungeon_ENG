#==============================================================================
# ■ 3DDungeon - Walls
#   @version 1.51 12/08/28
#   @author sabakan
#   @translator rutare
#------------------------------------------------------------------------------
#  ■ Wall Art Configuration Instructions
#    1. Create the wall graphics at the resolution 366*227.
#    2. Name the files like this: "WallXX.png" or "GateXX.png".
#    3. To use the Map Art Designation tag <XX> in the map name.
#
#  ■ Advanced Usages
#    You can draw your own wall and gate graphics if you choose to.
#    Templates are availible for you under "Graphics\System".
#==============================================================================
module Saba
  module Three_D
    # Extends the display area of the frontmost image by this amount
    EXTEND_LENGTH = 80
    
    # Width of smallest wall instance displayed
    UNIT_WIDTH = 45
    
    # Wall Y-coordinate offset
    OFFSET_Y = -56
    
    FOE_MARKER = 100
        
    # Tile ID numbers
    WALL48 = 1536
    WALL8  = 1537
    WALL68 = 1538
    WALL468 = 1539
    
    WALL4  = 1544
    WALL6  = 1546
    WALL46 = 1547
    WALL2468= 1548
    
    WALL24 = 1552
    WALL2  = 1553
    WALL26 = 1554
    WALL246  = 1555
    WALL248  = 1556
    WALL28  = 1557
    WALL268  = 1558
    
    WALL_TOP = [WALL48, WALL8, WALL68, WALL28, WALL468, WALL248, WALL268, WALL2468]
    WALL_BOTTOM = [WALL24, WALL2, WALL26, WALL28, WALL246, WALL248, WALL268, WALL2468]
    
    WALL_LEFT = [WALL48, WALL4, WALL24, WALL46, WALL468, WALL248, WALL246, WALL2468]
    WALL_RIGHT = [WALL68, WALL6, WALL26, WALL46, WALL468, WALL268, WALL246, WALL2468]
    
    WALL48_2 = 1560
    WALL8_2  = 1561
    WALL68_2 = 1562
    WALL468_2 = 1563
    
    WALL4_2  = 1568
    WALL6_2  = 1570
    WALL46_2 = 1571
    WALL2468_2 = 1572
    
    WALL24_2 = 1576
    WALL2_2  = 1577
    WALL26_2 = 1578
    WALL246_2  = 1579
    WALL248_2  = 1580
    WALL28_2  = 1581
    WALL268_2  = 1582
    
    WALL_TOP_2 = [WALL48_2, WALL8_2, WALL68_2, WALL28_2, WALL468_2, WALL248_2, WALL268_2, WALL2468_2]
    WALL_BOTTOM_2 = [WALL24_2, WALL2_2, WALL26_2, WALL28_2, WALL246_2, WALL248_2, WALL268_2, WALL2468_2]
    
    WALL_LEFT_2 = [WALL48_2, WALL4_2, WALL24_2, WALL46_2, WALL468_2, WALL248_2, WALL246_2, WALL2468_2]
    WALL_RIGHT_2 = [WALL68_2, WALL6_2, WALL26_2, WALL46_2, WALL468_2, WALL268_2, WALL246_2, WALL2468_2]
    
    WALL48_3 = 1584
    WALL8_3  = 1585
    WALL68_3 = 1586
    WALL468_3 = 1587
    
    WALL4_3  = 1592
    WALL6_3  = 1594
    WALL46_3 = 1595
    WALL2468_3 = 1596
    
    WALL24_3 = 1600
    WALL2_3  = 1601
    WALL26_3 = 1602
    WALL246_3  = 1603
    WALL248_3  = 1604
    WALL28_3  = 1605
    WALL268_3  = 1606
    
    WALL_TOP_3 = [WALL48_3, WALL8_3, WALL68_3, WALL28_3, WALL468_3, WALL248_3, WALL268_3, WALL2468_3]
    WALL_BOTTOM_3 = [WALL24_3, WALL2_3, WALL26_3, WALL28_3, WALL246_3, WALL248_3, WALL268_3, WALL2468_3]
    
    WALL_LEFT_3 = [WALL48_3, WALL4_3, WALL24_3, WALL46_3, WALL468_3, WALL248_3, WALL246_3, WALL2468_3]
    WALL_RIGHT_3 = [WALL68_3, WALL6_3, WALL26_3, WALL46_3, WALL468_3, WALL268_3, WALL246_3, WALL2468_3]
    
    WALL48_4 = 1608
    WALL8_4  = 1609
    WALL68_4 = 1610
    WALL468_4 = 1611
    
    WALL4_4  = 1616
    WALL6_4  = 1618
    WALL46_4 = 1619
    WALL2468_4 = 1620
    
    WALL24_4 = 1624
    WALL2_4  = 1625
    WALL26_4 = 1626
    WALL246_4  = 1627
    WALL248_4  = 1628
    WALL28_4  = 1629
    WALL268_4  = 1630
    
    WALL_TOP_4 = [WALL48_4, WALL8_4, WALL68_4, WALL28_4, WALL468_4, WALL248_4, WALL268_4, WALL2468_4]
    WALL_BOTTOM_4 = [WALL24_4, WALL2_4, WALL26_4, WALL28_4, WALL246_4, WALL248_4, WALL268_4, WALL2468_4]
    
    WALL_LEFT_4 = [WALL48_4, WALL4_4, WALL24_4, WALL46_4, WALL468_4, WALL248_4, WALL246_4, WALL2468_4]
    WALL_RIGHT_4 = [WALL68_4, WALL6_4, WALL26_4, WALL46_4, WALL468_4, WALL268_4, WALL246_4, WALL2468_4]
    
    
    WALL48_5 = 1632
    WALL8_5  = 1633
    WALL68_5 = 1634
    WALL468_5 = 1635
    
    WALL4_5  = 1640
    WALL6_5  = 1642
    WALL46_5 = 1643
    
    
    WALL24_5 = 1648
    WALL2_5  = 1649
    WALL26_5 = 1650
    WALL246_5  = 1651
    
    WALL248_5  = 1656
    WALL28_5  = 1657
    WALL268_5  = 1658
    WALL2468_5 = 1659
    
    WALL_TOP_5 = [WALL48_5, WALL8_5, WALL68_5, WALL28_5, WALL468_5, WALL248_5, WALL268_5, WALL2468_5]
    WALL_BOTTOM_5 = [WALL24_5, WALL2_5, WALL26_5, WALL28_5, WALL246_5, WALL248_5, WALL268_5, WALL2468_5]
    
    WALL_LEFT_5 = [WALL48_5, WALL4_5, WALL24_5, WALL46_5, WALL468_5, WALL248_5, WALL246_5, WALL2468_5]
    WALL_RIGHT_5 = [WALL68_5, WALL6_5, WALL26_5, WALL46_5, WALL468_5, WALL268_5, WALL246_5, WALL2468_5]
    
    WALL48_6 = 1636
    WALL8_6  = 1637
    WALL68_6 = 1638
    WALL468_6 = 1639
    
    WALL4_6  = 1644
    WALL6_6  = 1646
    WALL46_6 = 1647
    
    
    WALL24_6 = 1652
    WALL2_6  = 1653
    WALL26_6 = 1654
    WALL246_6  = 1655
    
    WALL248_6  = 1660
    WALL28_6  = 1661
    WALL268_6  = 1662
    WALL2468_6 = 1663
    
    WALL_TOP_6 = [WALL48_6, WALL8_6, WALL68_6, WALL28_6, WALL468_6, WALL248_6, WALL268_6, WALL2468_6]
    WALL_BOTTOM_6 = [WALL24_6, WALL2_6, WALL26_6, WALL28_6, WALL246_6, WALL248_6, WALL268_6, WALL2468_6]
    
    WALL_LEFT_6 = [WALL48_6, WALL4_6, WALL24_6, WALL46_6, WALL468_6, WALL248_6, WALL246_6, WALL2468_6]
    WALL_RIGHT_6 = [WALL68_6, WALL6_5, WALL26_6, WALL46_6, WALL468_6, WALL268_6, WALL246_6, WALL2468_6]
    
    
    GATE48  = 8
    GATE8   = 9
    GATE68  = 10
    GATE468 = 11
    
    GATE4   = 16
    GATE2468 = 17
    GATE6   = 18
    GATE46  = 19
    
    GATE24  = 24
    GATE2   = 25
    GATE26  = 26
    GATE246 = 27
    GATE248 = 28
    GATE28  = 29
    GATE268 = 30
    
    GATE_TOP = [GATE48, GATE8, GATE68, GATE28, GATE468, GATE248, GATE268, GATE2468]
    GATE_BOTTOM = [GATE24, GATE2, GATE26, GATE28, GATE246, GATE248, GATE268, GATE2468]
    
    GATE_LEFT = [GATE48, GATE4, GATE24, GATE46, GATE468, GATE248, GATE246, GATE2468]
    GATE_RIGHT = [GATE68, GATE6, GATE26, GATE46, GATE468, GATE268, GATE246, GATE2468]
    
    GATE48_2  = 32
    GATE8_2   = 33
    GATE68_2  = 34
    GATE468_2 = 35
    
    GATE4_2   = 40
    GATE2468_2 = 41
    GATE6_2   = 42
    GATE46_2  = 43
    
    GATE24_2  = 48
    GATE2_2   = 49
    GATE26_2  = 50
    GATE246_2 = 51
    GATE248_2 = 52
    GATE28_2  = 53
    GATE268_2 = 54
    
    GATE_TOP_2 = [GATE48_2, GATE8_2, GATE68_2, GATE28_2, GATE468_2, GATE248_2, GATE268_2, GATE2468_2]
    GATE_BOTTOM_2 = [GATE24_2, GATE2_2, GATE26_2, GATE28_2, GATE246_2, GATE248_2, GATE268_2, GATE2468_2]
    
    GATE_LEFT_2 = [GATE48_2, GATE4_2, GATE24_2, GATE46_2, GATE468_2, GATE248_2, GATE246_2, GATE2468_2]
    GATE_RIGHT_2 = [GATE68_2, GATE6_2, GATE26_2, GATE46_2, GATE468_2, GATE268_2, GATE246_2, GATE2468_2]
    
    GATE48_3  = 56
    GATE8_3   = 57
    GATE68_3  = 58
    GATE468_3 = 59
    
    GATE4_3   = 64
    GATE2468_3 = 65
    GATE6_3   = 66
    GATE46_3  = 67
    
    GATE24_3  = 72
    GATE2_3   = 73
    GATE26_3  = 74
    GATE246_3 = 75
    GATE248_3 = 76
    GATE28_3  = 77
    GATE268_3 = 78
    
    GATE_TOP_3 = [GATE48_3, GATE8_3, GATE68_3, GATE28_3, GATE468_3, GATE248_3, GATE268_3, GATE2468_3]
    GATE_BOTTOM_3 = [GATE24_3, GATE2_3, GATE26_3, GATE28_3, GATE246_3, GATE248_3, GATE268_3, GATE2468_3]
    
    GATE_LEFT_3 = [GATE48_3, GATE4_3, GATE24_3, GATE46_3, GATE468_3, GATE248_3, GATE246_3, GATE2468_3]
    GATE_RIGHT_3 = [GATE68_3, GATE6_3, GATE26_3, GATE46_3, GATE468_3, GATE268_3, GATE246_3, GATE2468_3]
    
    ONE_WAY48  = 80
    ONE_WAY8   = 81
    ONE_WAY68  = 82
    ONE_WAY468 = 83
    
    ONE_WAY4   = 88
    ONE_WAY2468 = 89
    ONE_WAY6   = 90
    ONE_WAY46  = 91
    
    ONE_WAY24  = 96
    ONE_WAY2   = 97
    ONE_WAY26  = 98
    ONE_WAY246 = 99
    ONE_WAY248 = 100
    ONE_WAY28  = 101
    ONE_WAY268 = 102
    
    ONE_WAY_TOP = [ONE_WAY48, ONE_WAY8, ONE_WAY68, ONE_WAY28, ONE_WAY468, ONE_WAY248, ONE_WAY268, ONE_WAY2468]
    ONE_WAY_BOTTOM = [ONE_WAY24, ONE_WAY2, ONE_WAY26, ONE_WAY28, ONE_WAY246, ONE_WAY248, ONE_WAY268, ONE_WAY2468]
    
    ONE_WAY_LEFT = [ONE_WAY48, ONE_WAY4, ONE_WAY24, ONE_WAY46, ONE_WAY468, ONE_WAY248, ONE_WAY246, ONE_WAY2468]
    ONE_WAY_RIGHT = [ONE_WAY68, ONE_WAY6, ONE_WAY26, ONE_WAY46, ONE_WAY468, ONE_WAY268, ONE_WAY246, ONE_WAY2468]
    
    DARK_ZONE = 84
  end
end

# Wall Creation
class Dungeon_Sprite
  #--------------------------------------------------------------------------
  # ○ Create Darkness
  #--------------------------------------------------------------------------
  def create_dark
    @dark = Bitmap.new(1, 1)
    @dark.fill_rect(0, 0, 1, 1, $dungeon.darkness)
  end
  #--------------------------------------------------------------------------
  # ○ Create Wall Graphics
  #    The wall graphics are all pre-loaded to increase processing speed
  #--------------------------------------------------------------------------
  def create_bitmaps
    @width = Saba::Three_D::UNIT_WIDTH
    @height = 400
    @front_height = 682
    @offset_y = -38
    @y = Saba::Three_D::OFFSET_Y
    create_dark
    
    wall_names = $game_map.wall_names
    
    create_wall_array
    
    wall_names.size.times do |index|
      gate = false
      wall_name = wall_names[index][0]
      2.times do
        create_left05(wall_name, index, gate)
        create_left1(wall_name, index, gate)
        create_left15(wall_name, index, gate)
        create_left1_2(wall_name, index, gate)
        create_left2(wall_name, index, gate)
        create_left25(wall_name, index, gate)
        create_left2_2(wall_name, index, gate)
        create_left25_2(wall_name, index, gate)
        create_left2_3(wall_name, index, gate)
        create_left3(wall_name, index, gate)
        create_left35(wall_name, index, gate)
        create_left3_2(wall_name, index, gate)
        create_left35_2(wall_name, index, gate)
        create_left3_3(wall_name, index, gate)
        create_left4(wall_name, index, gate)
        create_left45(wall_name, index, gate)
        create_left4_2(wall_name, index, gate)
        create_left4_3(wall_name, index, gate)
        create_right05(wall_name, index, gate)
        create_right1(wall_name, index, gate)
        create_right15(wall_name, index, gate)
        create_right1_2(wall_name, index, gate)
        create_right2(wall_name, index, gate)
        create_right25(wall_name, index, gate)
        create_right2_2(wall_name, index, gate)
        create_right25_2(wall_name, index, gate)
        create_right2_3(wall_name, index, gate)
        create_right3(wall_name, index, gate)
        create_right35(wall_name, index, gate)
        create_right3_2(wall_name, index, gate)
        create_right35_2(wall_name, index, gate)
        create_right3_3(wall_name, index, gate)
        create_right4(wall_name, index, gate)
        create_right45(wall_name, index, gate)
        create_right4_2(wall_name, index, gate)
        create_right4_3(wall_name, index, gate)
        create_front05(wall_name, index, gate)
        create_front1(wall_name, index, gate)
        create_front2(wall_name, index, gate)
        create_front25(wall_name, index, gate)
        create_front3(wall_name, index, gate)
        create_front35(wall_name, index, gate)
        create_front45(wall_name, index, gate)
        gate = true
      end
      dispose_cache
    end
  end

  def dispose_cache
    wall_names = $game_map.wall_names
    wall_names.size.times do |index|
      gate = false
      wall_name = wall_names[index][0]
      begin
        4.times do |i|
          index = ""
          if i >= 1
            index = (i + 1).to_s
          end
          wall = Cache.system("Wall" + wall_name + "_left" + index)
          wall.dispose
          
          wall = Cache.system("Gate" + wall_name + "_left" + index)
          wall.dispose
        end
      rescue
      end
      
      begin
          wall = Cache.system("Wall" + wall_name + "_front")
          wall.dispose
          
          wall = Cache.system("Gate" + wall_name + "_front")
          wall.dispose
      rescue
      end
      
      begin
          wall = Cache.system("Wall" + wall_name)
          wall.dispose
          
          wall = Cache.system("Gate" + wall_name)
          wall.dispose
      rescue
      end
    end
  end
  
  def create_wall_array
    @front05 = []
    @front05_gate = []
    @front1 = []
    @front1_gate = []
    @front2 = []
    @front2_gate = []
    @front25 = []
    @front25_gate = []
    @front3 = []
    @front3_gate = []
    @front35 = []
    @front35_gate = []
    @front45 = []
    @front45_gate = []
    @left05 = []
    @left05_gate = []
    @left1 = []
    @left1_gate = []
    @left1_2 = []
    @left1_2_gate = []
    @left15 = []
    @left15_gate = []
    @left2 = []
    @left2_gate = []
    @left2_2 = []
    @left2_2_gate = []
    @left2_3 = []
    @left2_3_gate = []
    @left25 = []
    @left25_gate = []
    @left25_2 = []
    @left25_2_gate = []
    @left3 = []
    @left3_gate = []
    @left3_2 = []
    @left3_2_gate = []
    @left3_3 = []
    @left3_3_gate = []
    @left35 = []
    @left35_gate = []
    @left35_2 = []
    @left35_2_gate = []
    @left4 = []
    @left4_gate = []
    @left4_2 = []
    @left4_2_gate = []
    @left4_3 = []
    @left4_3_gate = []
    @left45 = []
    @left45_gate = []
    @right05 = []
    @right05_gate = []
    @right1 = []
    @right1_gate = []
    @right1_2 = []
    @right1_2_gate = []
    @right15 = []
    @right15_gate = []
    @right2 = []
    @right2_gate = []
    @right2_2 = []
    @right2_2_gate = []
    @right2_3 = []
    @right2_3_gate = []
    @right25 = []
    @right25_gate = []
    @right25_2 = []
    @right25_2_gate = []
    @right3 = []
    @right3_gate = []
    @right3_2 = []
    @right3_2_gate = []
    @right3_3 = []
    @right3_3_gate = []
    @right35 = []
    @right35_gate = []
    @right35_2 = []
    @right35_2_gate = []
    @right4 = []
    @right4_gate = []
    @right4_2 = []
    @right4_2_gate = []
    @right4_3 = []
    @right4_3_gate = []
    @right45 = []
    @right45_gate = []
  end
  
  def dispose
    $dungeon.dungeon_sprite = nil
    @dark.dispose
    
    dispose_sprites
    
    dispose_bitmaps(@front05)
    dispose_bitmaps(@front1)
    
    dispose_bitmaps(@front2)
    dispose_bitmaps(@front25)
    dispose_bitmaps(@front3)
    dispose_bitmaps(@front35)
    dispose_bitmaps(@front45)
    
    dispose_bitmaps(@left05)
    dispose_bitmaps(@left1)
    dispose_bitmaps(@left15)
    dispose_bitmaps(@left2)
    dispose_bitmaps(@left25)
    dispose_bitmaps(@left3)
    dispose_bitmaps(@left35)
    dispose_bitmaps(@left4)
    dispose_bitmaps(@left45)
    dispose_bitmaps(@left1_2)
    dispose_bitmaps(@left2_2)
    dispose_bitmaps(@left25_2)
    dispose_bitmaps(@left3_2)
    dispose_bitmaps(@left35_2)
    dispose_bitmaps(@left4_2)
    dispose_bitmaps(@left2_3)
    dispose_bitmaps(@left3_3)
    dispose_bitmaps(@left4_3)
    
    dispose_bitmaps(@right05)
    dispose_bitmaps(@right1)
    dispose_bitmaps(@right15)
    dispose_bitmaps(@right2)
    dispose_bitmaps(@right25)
    dispose_bitmaps(@right3)
    dispose_bitmaps(@right35)
    dispose_bitmaps(@right4)
    dispose_bitmaps(@right45)
    dispose_bitmaps(@right1_2)
    dispose_bitmaps(@right2_2)
    dispose_bitmaps(@right25_2)
    dispose_bitmaps(@right3_2)
    dispose_bitmaps(@right35_2)
    dispose_bitmaps(@right4_2)
    dispose_bitmaps(@right2_3)
    dispose_bitmaps(@right3_3)
    dispose_bitmaps(@right4_3)
    
    dispose_bitmaps(@front05_gate)
    dispose_bitmaps(@front1_gate)
    dispose_bitmaps(@front2_gate)
    dispose_bitmaps(@front25_gate)
    dispose_bitmaps(@front3_gate)
    dispose_bitmaps(@front35_gate)
    dispose_bitmaps(@front45_gate)
    
    dispose_bitmaps(@left1_gate)
    dispose_bitmaps(@left15_gate)
    dispose_bitmaps(@left2_gate)
    dispose_bitmaps(@left25_gate)
    dispose_bitmaps(@left3_gate)
    dispose_bitmaps(@left35_gate)
    dispose_bitmaps(@left4_gate)
    dispose_bitmaps(@left1_2_gate)
    dispose_bitmaps(@left2_2_gate)
    dispose_bitmaps(@left25_2_gate)
    dispose_bitmaps(@left3_2_gate)
    dispose_bitmaps(@left35_2_gate)
    dispose_bitmaps(@left4_2_gate)
    dispose_bitmaps(@left2_3_gate)
    dispose_bitmaps(@left3_3_gate)
    dispose_bitmaps(@left4_3_gate)
    
    dispose_bitmaps(@right1_gate)
    dispose_bitmaps(@right15_gate)
    dispose_bitmaps(@right2_gate)
    dispose_bitmaps(@right25_gate)
    dispose_bitmaps(@right3_gate)
    dispose_bitmaps(@right35_gate)
    dispose_bitmaps(@right4_gate)
    dispose_bitmaps(@right1_2_gate)
    dispose_bitmaps(@right2_2_gate)
    dispose_bitmaps(@right25_2_gate)
    dispose_bitmaps(@right3_2_gate)
    dispose_bitmaps(@right35_2_gate)
    dispose_bitmaps(@right4_2_gate)
    dispose_bitmaps(@right2_3_gate)
    dispose_bitmaps(@right3_3_gate)
    dispose_bitmaps(@right4_3_gate)
    
    return
  end
  def dispose_bitmaps(array)
    for bitmap in array
      bitmap.dispose
    end
  end
  
  def create_left05(wall_name, index, gate = false)
    return if gate
    len = Saba::Three_D::EXTEND_LENGTH
    @left05[index] = Bitmap.new(@width * 24, @height + len)
    begin
      wall = Cache.system("Wall" + wall_name + "_left")
      y =  - 416 *3-76*2-@offset_y-76
      @left05[index].stretch_blt(Rect.new(0, y, @left05[index].width, wall.height * 3), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      a = @height * 3.0 / 7 / 3 / @width / 3
      y = @height * -5.0 / 7 / 3
      wall = Cache.system("Wall" + wall_name)
       (@width * 6).times do |i|
        @left05[index].stretch_blt(Rect.new(i + @width * 9 + 1, (i * a * 2 + y * 2).round, 1, (@height - i * a * 2 - y * 3).round - i * a), wall, Rect.new(wall.width * 1.0 / @width / 6.0 * i, 0, [wall.width / @width / 6, 1].max, wall.height))
      end
    end
  end
  
  def create_left1(wall_name, index, gate = false)
        len = Saba::Three_D::EXTEND_LENGTH
    if gate
      @left1_gate[index] = Bitmap.new(@width * 16, @height + len)
      bitmap = @left1_gate[index]
      name = "Gate"
    else
      @left1[index] = Bitmap.new(@width * 16, @height + len)
      bitmap = @left1[index]
      name = "Wall"
    end

    begin
      y = -416*2 - 76 *0 + @offset_y
      wall = Cache.system(name + wall_name + "_left")
      bitmap.stretch_blt(Rect.new(0, y, bitmap.width, wall.height*2), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      a = @height * 3.0 / 7 / 3 / (@width * 3)
      y = @height * -1.0 / 7 / 3
      wall = Cache.system(name + wall_name)
       (@width * 4).times do |i|
        bitmap.stretch_blt(Rect.new(i + @width * 6, (i * a * 2 + y * 2).round, 1, (@height - i * a * 2 - y * 3).round - i * a), wall, Rect.new(wall.width * 1.0 / @width / 4.0 * i, 0, [wall.width / @width / 4, 1].max, wall.height))
      end
    end
  end
  
  
  def create_left15(wall_name, index, gate = false)
    if gate
      @left15_gate[index] = Bitmap.new(@width * 12, @height)
      bitmap = @left15_gate[index]
      name = "Gate"
    else
      @left15[index] = Bitmap.new(@width * 12, @height)
      bitmap = @left15[index]
      name = "Wall"
    end
    
    begin
      wall = Cache.system(name + wall_name + "_left")
      y = -416*1.5  + 76 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, bitmap.width, wall.height * 1.5), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      a = @height * 3.0 / 7 / 3 / (@width * 3)
      y = @height * 1.0 / 7 / 3
      wall = Cache.system(name + wall_name)
       (@width * 3).times do |i|
        bitmap.stretch_blt(Rect.new(i + @width * 4.5 + 1, (i * a * 2 + y * 2).round, 1, (@height - i * a * 2 - y * 3).round - i * a), wall, Rect.new(wall.width * 1.0 / @width / 3.0 * i, 0, [wall.width / @width / 3, 1].max, wall.height))
      end
    end
  end
  
  def create_left1_2(wall_name, index, gate = false)
    len = Saba::Three_D::EXTEND_LENGTH
    if gate
      @left1_2_gate[index] = Bitmap.new(@width * 21, @height + len)
      bitmap = @left1_2_gate[index]
      name = "Gate"
    else
      @left1_2[index] = Bitmap.new(@width * 21, @height + len)
      bitmap = @left1_2[index]
      name = "Wall"
    end
    
    begin    
      wall = Cache.system(name + wall_name + "_left2")
      y =  - 416 *2 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, bitmap.width, wall.height * 2), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      a = @height * 3.0 / 7 / 3 / (@width * 3) / 3.5
      wall = Cache.system(name + wall_name)
       (@width * 3 * 3.5).round.times do |i|
        bitmap.stretch_blt(Rect.new(i + @width * 5.25, (i * a * 2).round, 1, (@height - i * a * 2).round - i * a), wall, Rect.new(wall.width * 1.0 / @width / 3 * i / 3.5, 0, [wall.width / @width / 3 / 3, 1].max, wall.height))
      end
    end
  end
  
  def create_left2(wall_name, index, gate = false)
    if gate
      @left2_gate[index] = Bitmap.new(@width * 8, @height)
      bitmap = @left2_gate[index]
      name = "Gate"
    else
      @left2[index] = Bitmap.new(@width * 8, @height)
      bitmap = @left2[index]
      name = "Wall"
    end
    
    begin
      wall = Cache.system(name + wall_name + "_left")
      y = -416 + 76 *2 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, bitmap.width, wall.height), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      a = @height * 2.0 / 7 / 3 / (@width * 2)
      y = @height * 3.0 / 7 / 3
      wall = Cache.system(name + wall_name)
       (@width * 2).times do |i|
        bitmap.stretch_blt(Rect.new(i + @width * 3, (i * a * 2 + y * 2).round, 1,  (@height - i * a * 2 - y * 3).round - i * a), wall, Rect.new(wall.width * 1.0 / @width / 2 * i, 0, [wall.width / @width / 2, 1].max, wall.height))
      end
    end
  end
  
  def create_left25(wall_name, index, gate = false)
    if gate
      @left25_gate[index] = Bitmap.new(@width * 6, @height)
      bitmap = @left25_gate[index]
      name = "Gate"
    else
      @left25[index] = Bitmap.new(@width * 6, @height)
      bitmap = @left25[index]
      name = "Wall"
    end
    
    begin
      wall = Cache.system(name + wall_name + "_left")   
      y = -416*3/4  + 76*2+38 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, bitmap.width, wall.height * 3 / 4), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      a = @height * 2.0 / 7 / 3 / (@width * 2)
      y = @height * 4.0 / 7 / 3
      wall = Cache.system(name + wall_name)
       (@width * 1.5).round.times do |i|
        bitmap.stretch_blt(Rect.new(i + @width * 2.25 + 1, (i * a * 2 + y * 2).round+1, 1,  (@height - i * a * 2 - y * 3).round - i * a), wall, Rect.new((wall.width * 1.0 - wall.width / (@width * 1.5)) / (@width * 1.5) * i, 0, [wall.width / @width / 1.5, 1].max, wall.height))
      end
    end
  end
  
  def create_left2_2(wall_name, index, gate = false)
    if gate
      @left2_2_gate[index] = Bitmap.new(@width * 12, @height)
      bitmap = @left2_2_gate[index]
      name = "Gate"
    else
      @left2_2[index] = Bitmap.new(@width * 12, @height)
      bitmap = @left2_2[index]
      name = "Wall"
    end
    
    begin
      wall = Cache.system(name + wall_name + "_left2")
      y = -416 + 76 *2 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, bitmap.width, wall.height), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      a = @height * 2.0 / 7 / 3 / (@width * 2) / 3
      y = @height * 3.0 / 7 / 3
      wall = Cache.system(name + wall_name)
       (@width * 6).times do |i|
        bitmap.stretch_blt(Rect.new(i + @width * 3, (i * a * 2 + y * 2).round, 1,  (@height - i * a * 2 - y * 2).round - i * a - y), wall, Rect.new((wall.width * 1.0 - wall.width / @width / 2) / @width / 6.0 * i, 0, [wall.width / @left2_2[index].width, 1].max, wall.height))
      end
    end
  end
  
  def create_left25_2(wall_name, index, gate = false)
    if gate
      @left25_2_gate[index] = Bitmap.new(@width * 9, @height)
      bitmap = @left25_2_gate[index]
      name = "Gate"
    else
      @left25_2[index] = Bitmap.new(@width * 9, @height)
      bitmap = @left25_2[index]
      name = "Wall"
    end
    
    begin
      wall = Cache.system(name + wall_name + "_left2")
      y = -416*3/4  + 76*2+38 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, bitmap.width, wall.height * 0.75), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      a = @height * 2.0 / 7 / 3 / @width / 6 
      y = @height * 4.0 / 7 / 3
      wall = Cache.system(name + wall_name)
       ((@width * 4.5).round).times do |i|
        bitmap.stretch_blt(Rect.new(i + @width * 2.25, (i * a * 2 + y * 2).round, 1,  (@height - i * a * 2 - y * 2).round - i * a - y), wall, Rect.new((wall.width * 1.0 - wall.width / @width / 2) / @width / 4.5 * i, 0, [wall.width / @left25_2[index].width, 1].max, wall.height))
      end
    end
  end
  
  def create_left2_3(wall_name, index, gate = false)
    if gate
      @left2_3_gate[index] = Bitmap.new(@width * 18, @height)
      bitmap = @left2_3_gate[index]
      name = "Gate"
    else
      @left2_3[index] = Bitmap.new(@width * 18, @height)
      bitmap = @left2_3[index]
      name = "Wall"
    end
    
    begin
      wall = Cache.system(name + wall_name + "_left3")
      y = -416 + 76 *2 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, bitmap.width, wall.height), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      a = @height * 2.0 / 7 / 3 / (@width * 2) / 6
      y = @height * 3.0 / 7 / 3
      wall = Cache.system(name + wall_name)
       (@width * 12).times do |i|
        bitmap.stretch_blt(Rect.new(i + @width * 3, (i * a * 2 + y * 2).round, 1,  (@height - i * a * 2 - y * 2).round - i * a - y), wall, Rect.new((wall.width * 1.0 - wall.width / @width / 2) / @width / 12.0 * i, 0, [wall.width / @width / 2, 1].max, wall.height))
      end
    end
  end
  
  def create_left3(wall_name, index, gate = false)
    if gate
      @left3_gate[index] = Bitmap.new(@width * 4, @height)
      bitmap = @left3_gate[index]
      name = "Gate"
    else
      @left3[index] = Bitmap.new(@width * 4, @height)
      bitmap = @left3[index]
      name = "Wall"
    end
    
    begin
      wall = Cache.system(name + wall_name + "_left")
      y = -416/2 + 76 *2 + 76 + @offset_y
      bitmap.stretch_blt(Rect.new(-1, y, bitmap.width, wall.height / 2), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      a = @height * 1.0 / 7 / 3 / @width
      y = @height * 5.0 / 7 / 3
      wall = Cache.system(name + wall_name)
      @width.times do |i|
        bitmap.stretch_blt(Rect.new(i + @width * 1.5, (i * a * 2 + y * 2).round+1, 1,  (@height - i * a * 2 - y * 2).round - i * a - y ), wall, Rect.new(wall.width * 1.0 / @width * i, 0, [wall.width / @width, 1].max, wall.height))
      end
    end
  end
  
  def create_left35(wall_name, index, gate = false)
    if gate
      @left35_gate[index] = Bitmap.new(@width * 3 + 1, @height)
      bitmap = @left35_gate[index]
      name = "Gate"
    else
      @left35[index] = Bitmap.new(@width * 3 + 1, @height)
      bitmap = @left35[index]
      name = "Wall"
    end
    
    begin
      wall = Cache.system(name + wall_name + "_left")
      y = -416*3/8  + 76*2+76+19 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, bitmap.width, wall.height * 3 / 8), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      a = @height * 1.0 / 7 / 3 / @width
      y = @height * 5.5 / 7 / 3
      wall = Cache.system(name + wall_name)
       ((@width * 0.75).round() + 1).times do |i|
        bitmap.stretch_blt(Rect.new(i + @width * 1.125 + 2, (i * a * 2 + y * 2).round, 1,  (@height - i * a * 2 - y * 2).round - i * a - y), wall, Rect.new(wall.width * 1.0 / @width * i / 0.75 + 1, 0, [wall.width / @width / 0.75, 1].max, wall.height))
      end
    end
  end
  
  def create_left3_2(wall_name, index, gate = false)
    if gate
      @left3_2_gate[index] = Bitmap.new(@width * 6, @height)
      bitmap = @left3_2_gate[index]
      name = "Gate"
    else
      @left3_2[index] = Bitmap.new(@width * 6, @height)
      bitmap = @left3_2[index]
      name = "Wall"
    end
    
    begin
      wall = Cache.system(name + wall_name + "_left2")
      y = -416/2 + 76 *2 + 76 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, bitmap.width, wall.height / 2), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      a = @height * 1.0 / 7 / 3 / @width / 3
      y = @height * 5.0 / 7 / 3
      wall = Cache.system(name + wall_name)
       (@width* 3).times do |i|
        bitmap.stretch_blt(Rect.new(i + @width * 1.5, (i * a * 2 + y * 2).round+1, 1,  (@height - i * a * 2 - y * 2).round - i * a - y - 1), wall, Rect.new((wall.width * 1.0 - wall.width / @width) / @width / 3 * i, 0, [wall.width / @width, 1].max, wall.height))
      end
    end
  end
  
  def create_left35_2(wall_name, index, gate = false)
    if gate
      @left35_2_gate[index] = Bitmap.new(@width * 4.5, @height)
      bitmap = @left35_2_gate[index]
      name = "Gate"
    else
      @left35_2[index] = Bitmap.new(@width * 4.5, @height)
      bitmap = @left35_2[index]
      name = "Wall"
    end
    
    begin
      wall = Cache.system(name + wall_name + "_left2")
      y = -416*3/8  + 76*2+76+19 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, bitmap.width, wall.height * 0.375), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      a = @height * 1.0 / 7 / 3 / @width / 3
      y = @height * 5.5 / 7 / 3
      wall = Cache.system(name + wall_name)
       ((@width * 2.25).round).times do |i|
        bitmap.stretch_blt(Rect.new(i + @width * 1.125, (i * a * 2 + y * 2).round, 1,  (@height - i * a * 2 - y * 2).round - i * a - y - 1), wall, Rect.new((wall.width * 1.0 - wall.width  * 1.0/ @left35_2[index].width) / @width / 2.25 * i, 0, [wall.width / @width, 1].max, wall.height))
      end
    end
  end
  
  def create_left3_3(wall_name, index, gate = false)
    if gate
      @left3_3_gate[index] = Bitmap.new(@width * 9, @height)
      bitmap = @left3_3_gate[index]
      name = "Gate"
    else
      @left3_3[index] = Bitmap.new(@width * 9, @height)
      bitmap = @left3_3[index]
      name = "Wall"
    end
    
    begin    
      wall = Cache.system(name + wall_name + "_left3")
      y = -416/2 + 76 *2 + 76 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, bitmap.width, wall.height / 2), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      a = @height * 1.0 / 7 / 3 / @width / 6
      y = @height * 5.0 / 7 / 3
      wall = Cache.system(name + wall_name)
       (@width * 6).times do |i|
        bitmap.stretch_blt(Rect.new(i + @width * 1.5, (i * a * 2 + y * 2).round, 1,  (@height - i * a * 2 - y * 2).round - i * a - y - 1), wall, Rect.new((wall.width * 1.0 - wall.width / @width) / @width / 6 * i, 0, [wall.width / @width, 1].max, wall.height))
      end
    end
  end
  
  def create_left4(wall_name, index, gate = false)
    if gate
      @left4_gate[index] = Bitmap.new(@width * 2, @height)
      bitmap = @left4_gate[index]
      name = "Gate"
    else
      @left4[index] = Bitmap.new(@width * 2, @height)
      bitmap = @left4[index]
      name = "Wall"
    end
    
    begin
      wall = Cache.system(name + wall_name + "_left")
      y = -416/4 + 76 *2 + 76 + 39 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, bitmap.width, wall.height / 4), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      a = @height * 1.0 / 7 / 3 / @width
      y = @height * 6.0 / 7 / 3
      wall = Cache.system(name + wall_name)
       (@width / 2).times do |i|
        bitmap.stretch_blt(Rect.new(i + @width * 0.75 + 1, (i * a * 2 + y * 2).round, 1,  (@height - i * a * 2 - y * 2).round - i * a - y - 1), wall, Rect.new(wall.width * 1.0 / @width * i * 2, 0, [wall.width / @width * 2, 1].max, wall.height))
      end
    end
  end
  
  def create_left45(wall_name, index, gate = false)
    return if gate
    @left45[index] = Bitmap.new(21, @height)
    begin
      wall = Cache.system("Wall" + wall_name + "_left4")
      y = 141 + @offset_y
      @left45[index].blt(0, y, wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      a = @height * 1.0 / 7 / 3 / @width
      y = @height * 6.25 / 7 / 3
      wall = Cache.system("Wall" + wall_name)
       (8).times do |i|
        #p ((wall.width * 1.0 / @width * i * 2).round - 1).to_s
        @left45[index].stretch_blt(Rect.new(i + 7, (i * a * 2 + y * 2).round() , 1,  (@height - i * a * 2 - y * 2).round - i * a - y - 1), wall, Rect.new((wall.width * 1.0 / @width * i * 2).round - 1, 0, [(wall.width ) / @width * 2, 1].max, wall.height))
      end
    end
  end
  
  
  def create_left4_2(wall_name, index, gate = false)
    if gate
      @left4_2_gate[index] = Bitmap.new(@width * 3, @height)
      bitmap = @left4_2_gate[index]
      name = "Gate"
    else
      @left4_2[index] = Bitmap.new(@width * 3, @height)
      bitmap = @left4_2[index]
      name = "Wall"
    end
    
    begin
      wall = Cache.system(name + wall_name + "_left2")
      y = -416/4 + 76 *2 + 76 + 38 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, bitmap.width, wall.height / 4), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      a = @height * 1.0 / 7 / 3 / @width / 3
      y = @height * 6.0 / 7 / 3
      wall = Cache.system(name + wall_name)
       (@width * 3 / 2).times do |i|
        bitmap.stretch_blt(Rect.new(i + @width * 0.75, (i * a * 2 + y * 2).round, 1,  (@height - i * a * 2 - y * 2).round - i * a - y), wall, Rect.new(wall.width * 1.0 / @width * i / 1.5, 0, [wall.width / @width * 2, 1].max, wall.height))
      end
    end
  end
  
  def create_left4_3(wall_name, index, gate = false)
    if gate
      @left4_3_gate[index] = Bitmap.new(@width * 4.5, @height)
      bitmap = @left4_3_gate[index]
      name = "Gate"
    else
      @left4_3[index] = Bitmap.new(@width * 4.5, @height)
      bitmap = @left4_3[index]
      name = "Wall"
    end
    
    begin
      wall = Cache.system(name + wall_name + "_left3")
      y = -416/4 + 76 *2 + 76 + 38 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, bitmap.width, wall.height / 4), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      a = @height * 1.0 / 7 / 3 / @width / 6
      y = @height * 6.0 / 7 / 3
      wall = Cache.system(name + wall_name)
       (@width * 3).times do |i|
        bitmap.stretch_blt(Rect.new(i + @width * 0.75, (i * a * 2 + y * 2).round, 1,  (@height - i * a * 2 - y * 2).round - i * a - y), wall, Rect.new(wall.width * 1.0 / @width * i / 3, 0, [wall.width / @width * 2, 1].max, wall.height))
      end
    end
  end
  
  def create_right05(wall_name, index, gate = false)
    return if gate
    len = Saba::Three_D::EXTEND_LENGTH
    @right05[index] = Bitmap.new(@left05[index].width, @height + len)
     (@left05[index].width).times do |i|
      @right05[index].stretch_blt(Rect.new(@left05[index].width - i - 1, 0, 1, @height + len), @left05[index], Rect.new(i, 0, 1, @height + len))
    end
  end
  
  def create_right1(wall_name, index, gate = false)
        len = Saba::Three_D::EXTEND_LENGTH
    if gate
      @right1_gate[index] = Bitmap.new(@left1_gate[index].width, @height + len)
      reverse_copy(@right1_gate[index], @left1_gate[index], true)
    else
      @right1[index] = Bitmap.new(@left1[index].width, @height + len)
      reverse_copy(@right1[index], @left1[index], true)
    end
  end
  
  def reverse_copy(bitmap, source, extend = false)
        if extend
      len = Saba::Three_D::EXTEND_LENGTH 
        else
      len = 0
        end
   (source.width).times do |i|
      bitmap.stretch_blt(Rect.new(source.width - i - 1, 0, 1, @height + len), source, Rect.new(i, 0, 1, @height + len))
    end
  end
  
  def create_right15(wall_name, index, gate = false)
    if gate
      @right15_gate[index] = Bitmap.new(@left15_gate[index].width, @height)
      reverse_copy(@right15_gate[index], @left15_gate[index])
    else
      @right15[index] = Bitmap.new(@left15[index].width, @height)
      reverse_copy(@right15[index], @left15[index])
    end
  end
  
  def create_right1_2(wall_name, index, gate = false)
    len = Saba::Three_D::EXTEND_LENGTH
    if gate
      @right1_2_gate[index] = Bitmap.new(@left1_2_gate[index].width, @height + len)
      reverse_copy(@right1_2_gate[index], @left1_2_gate[index])
    else
      @right1_2[index] = Bitmap.new(@left1_2[index].width, @height + len)
      reverse_copy(@right1_2[index], @left1_2[index], true)
    end
  end
  
  def create_right2(wall_name, index, gate = false)
    if gate
      @right2_gate[index] = Bitmap.new(@left2_gate[index].width, @height)
      reverse_copy(@right2_gate[index], @left2_gate[index])
    else
      @right2[index] = Bitmap.new(@left2[index].width, @height)
      reverse_copy(@right2[index], @left2[index])
    end
  end
  
  def create_right25(wall_name, index, gate = false)
    if gate
      @right25_gate[index] = Bitmap.new(@left25_gate[index].width, @height)
      reverse_copy(@right25_gate[index], @left25_gate[index])
    else
      @right25[index] = Bitmap.new(@left25[index].width, @height)
      reverse_copy(@right25[index], @left25[index])
    end
  end
  
  def create_right2_2(wall_name, index, gate = false)
    if gate
      @right2_2_gate[index] = Bitmap.new(@left2_2_gate[index].width, @height)
      reverse_copy(@right2_2_gate[index], @left2_2_gate[index])
    else
      @right2_2[index] = Bitmap.new(@left2_2[index].width, @height)
      reverse_copy(@right2_2[index], @left2_2[index])
    end
  end
  
  def create_right25_2(wall_name, index, gate = false)
    if gate
      @right25_2_gate[index] = Bitmap.new(@left25_2_gate[index].width, @height)
      reverse_copy(@right25_2_gate[index], @left25_2_gate[index])
    else
      @right25_2[index] = Bitmap.new(@left25_2[index].width, @height)
      reverse_copy(@right25_2[index], @left25_2[index])
    end
  end
  
  def create_right2_3(wall_name, index, gate = false)
    if gate
      @right2_3_gate[index] = Bitmap.new(@left2_3_gate[index].width, @height)
      reverse_copy(@right2_3_gate[index], @left2_3_gate[index])
    else
      @right2_3[index] = Bitmap.new(@left2_3[index].width, @height)
      reverse_copy(@right2_3[index], @left2_3[index])
    end
  end
  
  def create_right3(wall_name, index, gate = false)
    if gate
      @right3_gate[index] = Bitmap.new(@left3_gate[index].width, @height)
      reverse_copy(@right3_gate[index], @left3_gate[index])
    else
      @right3[index] = Bitmap.new(@left3[index].width, @height)
      reverse_copy(@right3[index], @left3[index])
    end
  end
  
  def create_right35(wall_name, index, gate = false)
    if gate
      create_right35_gate(wall_name, index)
    else
      create_right35_wall(wall_name, index)
    end
  end
  
  
  def create_right35_wall(wall_name, index)
    @right35[index] = Bitmap.new(@left35[index].width, @height)
     (@left35[index].width).times do |i|
      @right35[index].stretch_blt(Rect.new(@left35[index].width - i - 2, 0, 1, @height), @left35[index], Rect.new(i, 0, 1, @height))
    end
  end
  
  def create_right35_gate(wall_name, index)
    @right35_gate[index] = Bitmap.new(@left35_gate[index].width, @height)
     (@left35_gate[index].width).times do |i|
      @right35_gate[index].stretch_blt(Rect.new(@left35_gate[index].width - i - 2, 0, 1, @height), @left35_gate[index], Rect.new(i, 0, 1, @height))
    end
  end
  
  def create_right3_2(wall_name, index, gate = false)
    if gate
      @right3_2_gate[index] = Bitmap.new(@left3_2_gate[index].width, @height)
      reverse_copy(@right3_2_gate[index], @left3_2_gate[index])
    else
      @right3_2[index] = Bitmap.new(@left3_2[index].width, @height)
      reverse_copy(@right3_2[index], @left3_2[index])
    end
  end
  
  def create_right35_2(wall_name, index, gate = false)
    if gate
      @right35_2_gate[index] = Bitmap.new(@left35_2_gate[index].width, @height)
      reverse_copy(@right35_2_gate[index], @left35_2_gate[index])
    else
      @right35_2[index] = Bitmap.new(@left35_2[index].width, @height)
      reverse_copy(@right35_2[index], @left35_2[index])
    end
  end
  
  def create_right3_3(wall_name, index, gate = false)
    if gate
      @right3_3_gate[index] = Bitmap.new(@left3_3_gate[index].width, @height)
      reverse_copy(@right3_3_gate[index], @left3_3_gate[index])
    else
      @right3_3[index] = Bitmap.new(@left3_3[index].width, @height)
      reverse_copy(@right3_3[index], @left3_3[index])
    end
  end
  
  def create_right4(wall_name, index, gate = false)
    if gate
      @right4_gate[index] = Bitmap.new(@left4_gate[index].width, @height)
      reverse_copy(@right4_gate[index], @left4_gate[index])
    else
      @right4[index] = Bitmap.new(@left4[index].width, @height)
      reverse_copy(@right4[index], @left4[index])
    end
  end
  
  def create_right45(wall_name, index, gate = false)
    if gate
      return
      #@right45_gate = Bitmap.new(@left45_gate.width, @height)
      #reverse_copy(@right45_gate, @left45_gate)
    else
      @right45[index] = Bitmap.new(@left45[index].width, @height)
      reverse_copy(@right45[index], @left45[index])
    end
  end
  
  def create_right4_2(wall_name, index, gate = false)
    if gate
      @right4_2_gate[index] = Bitmap.new(@left4_2_gate[index].width, @height)
      reverse_copy(@right4_2_gate[index], @left4_2_gate[index])
    else
      @right4_2[index] = Bitmap.new(@left4_2[index].width, @height)
      reverse_copy(@right4_2[index], @left4_2[index])
    end
  end
  
  def create_right4_3(wall_name, index, gate = false)
    if gate
      @right4_3_gate[index] = Bitmap.new(@left4_3_gate[index].width, @height)
      reverse_copy(@right4_3_gate[index], @left4_3_gate[index])
    else
      @right4_3[index] = Bitmap.new(@left4_3[index].width, @height)
      reverse_copy(@right4_3[index], @left4_3[index])
    end
  end
  
  def create_front05(wall_name, index, gate = false)
    if gate
      @front05_gate[index] = Bitmap.new(@width * 24, @height)
      bitmap = @front05_gate[index]
      name = "Gate"
    else
      @front05[index] = Bitmap.new(@width * 24, @height)
      bitmap = @front05[index]
      name = "Wall"
    end
    
    begin
      wall = Cache.system(name + wall_name + "_front")
      y = -416*1.5+76 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, @width * 24, @front_height * 1.5), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      wall = Cache.system(name + wall_name)
      y = @height * 1.0 / 7 / 3
      bitmap.stretch_blt(Rect.new(@width * 6, y * 2+1, @width * 12, @height - y * 3), wall, Rect.new(0, 0, wall.width, wall.height))
    end
  end
  
  def create_front1(wall_name, index, gate = false)
    if gate
      @front1_gate[index] = Bitmap.new(@width * 16, @height)
      bitmap = @front1_gate[index]
      name = "Gate"
    else
      @front1[index] = Bitmap.new(@width * 16, @height)
      bitmap = @front1[index]
      name = "Wall"
    end
    
    begin
      wall = Cache.system(name + wall_name + "_front")
      y = -416 + 76 *2 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, @width * 16, @front_height), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      wall = Cache.system(name + wall_name)
      y = @height * 3.0 / 7 / 3
      bitmap.stretch_blt(Rect.new(@width * 4, y * 2+1, @width * 8, @height - y * 3), wall, Rect.new(0, 0, wall.width, wall.height))
    end
  end
  
  
  
  def create_front25(wall_name, index, gate = false)
    if gate
      @front25_gate[index] = Bitmap.new(@width * 12, @height)
      bitmap = @front25_gate[index]
      name = "Gate"
    else
      @front25[index] = Bitmap.new(@width * 12, @height)
      bitmap = @front25[index]
      name = "Wall"
    end
    
    begin
      wall = Cache.system(name + wall_name + "_front")
      y = -416*3/4  + 76*2+38 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, @width * 12, @front_height * 0.75), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      wall = Cache.system(name + wall_name)
      y = @height * 4.0 / 7 / 3
      bitmap.stretch_blt(Rect.new(@width * 3, y * 2+1, @width * 6, @height - y * 3), wall, Rect.new(0, 0, wall.width, wall.height))
    end
  end 
  
  def create_front2(wall_name, index, gate = false)
    if gate
      @front2_gate[index] = Bitmap.new(@width * 8, @height)
      bitmap = @front2_gate[index]
      name = "Gate"
    else
      @front2[index] = Bitmap.new(@width * 8, @height)
      bitmap = @front2[index]
      name = "Wall"
    end
    begin
      wall = Cache.system(name + wall_name + "_front")
       y = -416/2 + 76 *2 + 76 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, @width * 8, @front_height / 2), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      wall = Cache.system(name + wall_name)
      y = @height * 5.0 / 7 / 3
      bitmap.stretch_blt(Rect.new(@width * 2, y * 2+1, @width * 4, @height - y * 3), wall, Rect.new(0, 0, wall.width, wall.height))
    end
  end
  
  def create_front35(wall_name, index, gate = false)
    if gate
      @front35_gate[index] = Bitmap.new(@width * 6, @height)
      bitmap = @front35_gate[index]
      name = "Gate"
    else
      @front35[index] = Bitmap.new(@width * 6, @height)
      bitmap = @front35[index]
      name = "Wall"
    end
    
    begin
      wall = Cache.system(name + wall_name + "_front")
      y = -416*3/8  + 76*2+76+19 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, @width * 6+1, @front_height * 0.375), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      wall = Cache.system(name + wall_name)
      y = @height * 5.5 / 7 / 3
      bitmap.stretch_blt(Rect.new(@width * 1.5, y * 2+1, @width * 3 + 1, @height - y * 3), wall, Rect.new(0, 0, wall.width, wall.height))
    end
  end
  
  def create_front3(wall_name, index, gate = false)
    if gate
      @front3_gate[index] = Bitmap.new(@width * 4, @height)
      bitmap = @front3_gate[index]
      name = "Gate"
    else
      @front3[index] = Bitmap.new(@width * 4, @height)
      bitmap = @front3[index]
      name = "Wall"
    end
    
    begin
      wall = Cache.system(name + wall_name + "_front")
      y = -416/4 + 76 *2 + 76 + 38 + @offset_y
      bitmap.stretch_blt(Rect.new(0, y, @width * 4, @front_height / 4), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      wall = Cache.system(name + wall_name)
      y = @height * 6.0 / 7 / 3
      bitmap.stretch_blt(Rect.new(@width, y * 2+1, @width * 2, @height - y * 3), wall, Rect.new(0, 0, wall.width, wall.height))
    end
  end
  
  def create_front45(wall_name, index, gate = false)
    if gate
      @front45_gate[index] = Bitmap.new(@width * 3 + 4, @height)
      bitmap = @front45_gate[index]
      name = "Gate"
    else
      @front45[index] = Bitmap.new(@width * 3 + 4, @height)
      bitmap = @front45[index]
      name = "Wall"
    end
    
    begin
      wall = Cache.system(name + wall_name + "_front")
      y = -416*0.1875  + 76*2+76+38+9 + @offset_y
      bitmap.stretch_blt(Rect.new(-1, y, @width * 3 + 4, @front_height * 0.1875), wall, Rect.new(0, 0, wall.width, wall.height))
    rescue
      wall = Cache.system(name + wall_name)
      y = @height * 6.25 / 7 / 3
      bitmap.stretch_blt(Rect.new((@width * 0.75).round() +1, y * 2, @width * 1.5+2, @height - y * 3), wall, Rect.new(0, 0, wall.width, wall.height))
    end
  end
end


#==============================================================================
# 壁判定
#==============================================================================
class Dungeon_Sprite
  def gate_side?(depth, side)
    x = $game_player.x
    y = $game_player.y
    direction = $game_player.direction
    case direction
    when 2
      return $game_map.gate?(x + (-side - 1), y + depth, 6) if side < 0
      return $game_map.gate?(x - (side - 1), y + depth, 4) if side > 0
    when 4
      return $game_map.gate?(x - depth, y + (-side - 1), 2) if side < 0
      return $game_map.gate?(x - depth, y - (side - 1), 8) if side > 0
    when 6
      return $game_map.gate?(x + depth, y - (-side - 1), 8) if side < 0
      return $game_map.gate?(x + depth, y + (side - 1), 2) if side > 0
    when 8
      return $game_map.gate?(x - (-side - 1), y - depth, 4) if side < 0
      return $game_map.gate?(x + (side - 1), y - depth, 6) if side > 0
    end
  end
  
  def gate_index_side(depth, side)
    x = $game_player.x
    y = $game_player.y
    direction = $game_player.direction
    case direction
    when 2
      return $game_map.gate_index(x + (-side - 1), y + depth, 6) if side < 0
      return $game_map.gate_index(x - (side - 1), y + depth, 4) if side > 0
    when 4
      return $game_map.gate_index(x - depth, y + (-side - 1), 2) if side < 0
      return $game_map.gate_index(x - depth, y - (side - 1), 8) if side > 0
    when 6
      return $game_map.gate_index(x + depth, y - (-side - 1), 8) if side < 0
      return $game_map.gate_index(x + depth, y + (side - 1), 2) if side > 0
    when 8
      return $game_map.gate_index(x - (-side - 1), y - depth, 4) if side < 0
      return $game_map.gate_index(x + (side - 1), y - depth, 6) if side > 0
    end
  end
  
  def gate_front?(depth, side)
    x = $game_player.x
    y = $game_player.y
    direction = $game_player.direction
    case direction
    when 2
      return $game_map.gate?(x - side, y + (depth - 1), direction)
    when 4
      return $game_map.gate?(x - (depth - 1), y - side, direction)
    when 6
      return $game_map.gate?(x + (depth - 1), y + side, direction)
    when 8
      return $game_map.gate?(x + side, y - (depth - 1), direction)
    end
  end
  
  def gate_index_front(depth, side)
    x = $game_player.x
    y = $game_player.y
    direction = $game_player.direction
    case direction
    when 2
      return $game_map.gate_index(x - side, y + (depth - 1), direction)
    when 4
      return $game_map.gate_index(x - (depth - 1), y - side, direction)
    when 6
      return $game_map.gate_index(x + (depth - 1), y + side, direction)
    when 8
      return $game_map.gate_index(x + side, y - (depth - 1), direction)
    end
  end
  
  def wall_index(depth, side, front = true)
    x = $game_player.x
    y = $game_player.y
    direction = $game_player.direction
    case direction
    when 2
      unless front
        direction = 0 if side == 0
        direction = 6 if side < 0
        direction = 4 if side > 0
      end
      return $game_map.wall_index(x - side, y + depth, direction)
    when 4
      unless front
        direction = 0 if side == 0
        direction = 2 if side < 0
        direction = 8 if side > 0
      end
      return $game_map.wall_index(x - depth, y - side, direction)
    when 6
      unless front
        direction = 0 if side == 0
        direction = 8 if side < 0
        direction = 2 if side > 0
      end
      return $game_map.wall_index(x + depth, y + side, direction)
    when 8
      unless front
        direction = 0 if side == 0
        direction = 4 if side < 0
        direction = 6 if side > 0
      end
      return $game_map.wall_index(x + side, y - depth, direction)
    end
  end
  
  def dark_zone?(x, y)
    tile_id = @map.data[x, y, 2]
    return tile_id == DARK_ZONE
  end
end


#==============================================================================
# 壁描画
#==============================================================================
class Dungeon_Sprite
  def draw_background
    y = @height * 6.5 / 7 / 3
    
    bitmap = @bitmaps[0]
    bitmap.fill_rect(0, @y + y * 2, bitmap.width, @height - y * 3, $dungeon.bg_color)
  end

  def draw_middle
    @bitmap = @bitmaps[0]
    draw_45_right_3
    
    draw_45_left_3
    draw_45_right_2
    draw_45_right_1
    draw_45_left_2
    draw_45_left_1
    draw_45_front
    @bitmap = find_bitmap(1)
    draw_35_left_3
    
    draw_35_left_2
    
    draw_35_right_3
    draw_35_right_2
    draw_35_left_1
    
    draw_35_right_1
    
    @bitmap = find_bitmap(0)
    draw_35_front
    
    @bitmap = find_bitmap(2)
    draw_25_right_3
    draw_25_right_2
    draw_25_left_3
    draw_25_left_2
    draw_25_right_1
    draw_25_left_1
    
    
    @bitmap = find_bitmap(1)
    draw_25_front
    
    @bitmap = find_bitmap(3)
    draw_15_right_1
    draw_15_left_1
    @bitmap = find_bitmap(2)
    draw_15_front
    @bitmap = find_bitmap(3)
    draw_05_left_1
    draw_05_right_1
    draw_05_front
    
  end
  
  def find_bitmap(index)
    if $game_switches[Saba::Three_D::COLORING_WALL_SWITCH]
      return @bitmaps[index]
    else
      return @bitmaps[index]
    end
  end
  
  def draw_rotation_right
    @bitmap = @bitmaps[1]
    draw_2_right_2_r
    
    draw_3_right_1_r
    draw_3_front_r
    draw_1_right_3_r
    @bitmap = @bitmaps[2]
    draw_2_right_1_r
    @bitmap = @bitmaps[1]
    
    draw_0_right_3_r
    
    @bitmap = @bitmaps[2]
    draw_1_right_2_r
    draw_2_front_r
    draw_0_right_2_r
    @bitmap = @bitmaps[3]
    draw_1_right_1_r
    
    draw_0_right_1_r
    draw_1_front_r
  end
  
  def draw_3_right_1_r
    if (@wall_index = wall_index(3, 1)) >= 0
      @bitmap.blt(@width * (0.75 - 2) + @start_ox + @offset_x, @y, @left4_3[@wall_index], Rect.new(0, 0, @left4_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(3, 1)) >= 0
      @bitmap.blt(@width * (0.75 - 2) + @start_ox + @offset_x, @y, @left4_3_gate[@wall_index], Rect.new(0, 0, @left4_3_gate[@wall_index].width, @height))
    end
    if (@wall_index = wall_index(3, 1, false)) >= 0
      @bitmap.blt(@width * -4.25 + 1 + @start_ox + @offset_x, @y, @right4_3[@wall_index], Rect.new(0, 0, @right4_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(3, 1)) >= 0
      @bitmap.blt(@width * -4.25 + 1 + @start_ox + @offset_x, @y, @right4_3_gate[@wall_index], Rect.new(0, 0, @right4_3_gate[@wall_index].width, @height))
    end
  end
  
  def draw_3_front_r
    y = @height * 6.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * -11 + @start_ox + @offset_x, y * 2 + @y, @width * 12.5, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(3, 0)) >= 0
      @bitmap.blt(@width * (-6.5 -1.5) + @start_ox + @offset_x, @y, @left3_3[@wall_index], Rect.new(0, 0, @left3_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(3, 0)) >= 0
      @bitmap.blt(@width * (-6.5 -1.5) + @start_ox + @offset_x, @y, @left3_3_gate[@wall_index], Rect.new(0, 0, @left3_3_gate[@wall_index].width, @height))
    end
  end
  
  def draw_2_right_3_r
    if (@wall_index = wall_index(2, 3, false)) >= 0
      @bitmap.blt(@width * 6.75 + @start_ox + @offset_x, @y, @right4_3[@wall_index], Rect.new(0, 0, @right4_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(2, 3)) >= 0
      @bitmap.blt(@width * 6.75 + @start_ox + @offset_x, @y, @right4_3_gate[@wall_index], Rect.new(0, 0, @right4_3_gate[@wall_index].width, @height))
    end
  end
  
  def draw_1_right_3_r
    if (@wall_index = wall_index(1, 3)) >= 0
      @bitmap.blt(@width * 14.5 -(@left4_2[@wall_index].width / 4) + @start_ox + @offset_x, @y, @left4_2[@wall_index], Rect.new(0, 0, @left4_2[@wall_index].width, @height))
    end
    if (@wall_index = wall_index(1, 3, false)) >= 0
      @bitmap.blt(@width * 10.75 + 1 + @start_ox + @offset_x, @y, @right4_3[@wall_index], Rect.new(0, 0, @right4_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(1, 3)) >= 0
      @bitmap.blt(@width * 10.75 + @start_ox + @offset_x, @y, @right4_3_gate[@wall_index], Rect.new(0, 0, @right4_3_gate[@wall_index].width, @height))
    end
  end
  
  def draw_0_right_3_r
    y = @height * 6.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 12.5 + @start_ox + @offset_x, y * 2 + @y, @width * 6+ @width * 3, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(0, 3, false)) >= 0
      @bitmap.blt(@width * (14.5 -1.5) + @start_ox + @offset_x, @y, @right3_3[@wall_index], Rect.new(0, 0, @right3_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(0, 3)) >= 0
      @bitmap.blt(@width * (14.5 -1.5) + @start_ox + @offset_x, @y, @right3_3_gate[@wall_index], Rect.new(0, 0, @right3_3_gate[@wall_index].width, @height))
    end
  end
  
  def draw_2_right_2_r
    if (@wall_index = wall_index(2, 2)) >= 0
      @bitmap.blt(@width * 6.25 + @start_ox + @offset_x, @y, @left4_3[@wall_index], Rect.new(0, 0, @left4_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(2, 2)) >= 0
      @bitmap.blt(@width * 6.25 + @start_ox + @offset_x, @y, @left4_3_gate[@wall_index], Rect.new(0, 0, @left4_3_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(2, 2, false)) >= 0
      @bitmap.blt(@width * 3.25 + 1 + @start_ox + @offset_x, @y, @right4_3[@wall_index], Rect.new(0, 0, @right4_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(2, 2)) >= 0
      @bitmap.blt(@width * 3.25 + @start_ox + @offset_x, @y, @right4_3_gate[@wall_index], Rect.new(0, 0, @right4_3_gate[@wall_index].width, @height))
    end
  end
  
  def draw_2_right_1_r
    y = @height * 6.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 1.5 + @start_ox + @offset_x, y * 2 + @y, @width * 5.5, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(2, 1)) >= 0
      @bitmap.blt(@width * (-0.5)+ @start_ox + @offset_x+1, @y, @left3_3[@wall_index], Rect.new(0, 0, @left3_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(2, 1)) >= 0
      @bitmap.blt(@width * (-0.5) + @start_ox + @offset_x+1, @y, @left3_3_gate[@wall_index], Rect.new(0, 0, @left3_3_gate[@wall_index].width, @height))
    end
    if (@wall_index = wall_index(2, 1, false)) >= 0
      @bitmap.blt(@width * (-3.5) + @start_ox + @offset_x, @y, @right3_2[@wall_index], Rect.new(0, 0, @right3_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(2, 1)) >= 0
      @bitmap.blt(@width * (-3.5) + @start_ox + @offset_x, @y, @right3_2_gate[@wall_index], Rect.new(0, 0, @right3_2_gate[@wall_index].width, @height))
    end
  end
  
  def draw_2_front_r
    if ((@wall_index = wall_index(2, 0)) >= 0) || ((@wall_index = gate_index_front(2, 0)) >= 0)
      @bitmap.blt(@width * (-11 -3) + @start_ox + @offset_x, @y, @left2_3[@wall_index], Rect.new(0, 0, @left2_3[@wall_index].width, @height))
    else
      y = @height * 5.0 / 7 / 3
      @bitmap.stretch_blt(Rect.new(@width * -11 + @start_ox, y * 2 + @y, @width * 12 + 6, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    end
  end
  
  def draw_1_right_2_r
    y = @height * 6.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 7 + @start_ox + @offset_x, y * 2 + @y, @width * 5.5, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    if (@wall_index = wall_index(1, 2)) >= 0
      @bitmap.blt(@width * (13 -1.5) + @start_ox + @offset_x, @y, @left3_2[@wall_index], Rect.new(0, 0, @left3_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(1, 2)) >= 0
      @bitmap.blt(@width * (13 -1.5) + @start_ox + @offset_x, @y, @left3_2_gate[@wall_index], Rect.new(0, 0, @left3_2_gate[@wall_index].width, @height))
    end
    if (@wall_index = wall_index(1, 2, false)) >= 0
      @bitmap.blt(@width * (7 -1.5) + @start_ox + @offset_x, @y, @right3_3[@wall_index], Rect.new(0, 0, @right3_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(1, 2)) >= 0
      @bitmap.blt(@width * (7 -1.5) + @start_ox + @offset_x, @y, @right3_3_gate[@wall_index], Rect.new(0, 0, @right3_3_gate[@wall_index].width, @height))
    end
  end
  
  def draw_1_right_1_r
    y = @height * 5.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 1 + @start_ox + @offset_x, y * 2 + @y, @width * 12, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(1, 1)) >= 0
      @bitmap.blt(@width * 4 + @start_ox + @offset_x, @y, @left2_2[@wall_index], Rect.new(0, 0, @left2_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(1, 1)) >= 0
      @bitmap.blt(@width * 4 + @start_ox + @offset_x, @y, @left2_2_gate[@wall_index], Rect.new(0, 0, @left2_2_gate[@wall_index].width, @height))
    end
    if (@wall_index = wall_index(1, 1, false)) >= 0
      @bitmap.blt(@width * -2 + @start_ox + @offset_x, @y, @right2_2[@wall_index], Rect.new(0, 0, @right2_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(1, 1)) >= 0
      @bitmap.blt(@width * -2 + @start_ox + @offset_x, @y, @right2_2_gate[@wall_index], Rect.new(0, 0, @right2_2_gate[@wall_index].width, @height))
    else
      #draw_event(@width * 7, 1, 1)
    end
  end
  
  def draw_0_right_2_r
    if (@wall_index = wall_index(0, 2, false)) >= 0
      @bitmap.blt(@width * (13 - 3) + @start_ox + @offset_x, @y, @right2_3[@wall_index], Rect.new(0, 0, @right2_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(0, 2)) >= 0
      @bitmap.blt(@width * (13 - 3) + @start_ox + @offset_x, @y, @right2_3_gate[@wall_index], Rect.new(0, 0, @right2_3_gate[@wall_index].width, @height))
    else
      y = @height * 5.0 / 7 / 3
      @bitmap.stretch_blt(Rect.new(@width * 13 + @start_ox + @offset_x, y * 2 + @y, @width * 12, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    end
  end
  
  def draw_0_right_1_r
    len = Saba::Three_D::EXTEND_LENGTH
    if (@wall_index = wall_index(0, 1, false)) >= 0
      @bitmap.blt(@width * 7 -(@right1_2[@wall_index].width / 4) -1 + @start_ox + @offset_x, @y, @right1_2[@wall_index], Rect.new(0, 0, @right1_2[@wall_index].width, @height + len))
    elsif (@wall_index = gate_index_side(0, 1)) >= 0
      @bitmap.blt(@width * 7 -(@right1_2_gate[@wall_index].width / 4) -1 + @start_ox + @offset_x, @y, @right1_2_gate[@wall_index], Rect.new(0, 0, @right1_2_gate[@wall_index].width, @height + len))
    else
      y = @height * 3.0 / 7 / 3
      @bitmap.stretch_blt(Rect.new(@width * 7 + @start_ox + @offset_x-1, y * 2 + @y, @width * 11, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    end
  end
  
  def draw_1_front_r
    len = Saba::Three_D::EXTEND_LENGTH
    if (@wall_index = wall_index(1, 0)) >= 0
      @bitmap.blt(@width * -3.5 -(@left1_2[@wall_index].width / 4) + @start_ox + @offset_x, @y, @left1_2[@wall_index], Rect.new(0, 0, @left1_2[@wall_index].width, @height + len))
    elsif (@wall_index = gate_index_front(1, 0)) >= 0
      @bitmap.blt(@width * -3.5 -(@left1_2_gate[@wall_index].width / 4) + @start_ox + @offset_x, @y, @left1_2_gate[@wall_index], Rect.new(0, 0, @left1_2_gate[@wall_index].width, @height + len))
    else
      y = @height * 3.0 / 7 / 3
      @bitmap.stretch_blt(Rect.new(@width * -3.5 + @start_ox + @offset_x, y * 2 + @y, @width * 10.5, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    end
  end
  
  def draw_rotation_left
    @bitmap = @bitmaps[1]
    draw_3_left_1_l
    
    draw_2_left_2_l
    draw_3_front_l
    draw_1_left_3_l
    @bitmap = @bitmaps[2]
    draw_2_left_1_l
    @bitmap = @bitmaps[1]
    draw_0_left_3_l
    
    @bitmap = @bitmaps[2]
    draw_1_left_2_l
    draw_2_front_l
    draw_0_left_2_l
    @bitmap = @bitmaps[3]
    draw_1_left_1_l
    draw_0_left_1_l
    draw_1_front_l
  end
  
  def draw_0_left_3_l
    y = @height * 6.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * -11 + @start_ox + @offset_x, y * 2 + @y, @width * 12.5, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(0, -3, false)) >= 0
      @bitmap.blt(@width * (-6.5 -1.5) + @start_ox + @offset_x, @y, @left3_3[@wall_index], Rect.new(0, 0, @left3_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(0, -3)) >= 0
      @bitmap.blt(@width * (-6.5 -1.5) + @start_ox + @offset_x, @y, @left3_3_gate[@wall_index], Rect.new(0, 0, @left3_3_gate[@wall_index].width, @height))
    end
  end
  
  def draw_2_left_2_l
    if (@wall_index = wall_index(2, -2)) >= 0
      @bitmap.blt(@width * 3.25 + 1 + @start_ox + @offset_x, @y, @right4_3[@wall_index], Rect.new(0, 0, @right4_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(2, -2)) >= 0
      @bitmap.blt(@width * 3.25 + 1 + @start_ox + @offset_x, @y, @right4_3_gate[@wall_index], Rect.new(0, 0, @right4_3_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(2, -2, false)) >= 0
      @bitmap.blt(@width * 6.25 + @start_ox + @offset_x, @y, @left4_3[@wall_index], Rect.new(0, 0, @left4_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(2, -2)) >= 0
      @bitmap.blt(@width * 6.25 + @start_ox + @offset_x, @y, @left4_3_gate[@wall_index], Rect.new(0, 0, @left4_3_gate[@wall_index].width, @height))
    end
  end
  
  def draw_2_left_1_l
    y = @height * 6.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 7 + @start_ox + @offset_x, y * 2 + @y, @width * 5.5, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(2, -1)) >= 0
      @bitmap.blt(@width * (5.5) + @start_ox + @offset_x, @y, @right3_3[@wall_index], Rect.new(0, 0, @right3_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(2, -1)) >= 0
      @bitmap.blt(@width * (5.5) + @start_ox + @offset_x, @y, @right3_3_gate[@wall_index], Rect.new(0, 0, @right3_3_gate[@wall_index].width, @height))      
    end
    
    if (@wall_index = wall_index(2, -1, false)) >= 0
      @bitmap.blt(@width * (11.5) + @start_ox + @offset_x, @y, @left3_2[@wall_index], Rect.new(0, 0, @left3_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(2, -1)) >= 0
      @bitmap.blt(@width * (11.5) + @start_ox + @offset_x, @y, @left3_2_gate[@wall_index], Rect.new(0, 0, @left3_2_gate[@wall_index].width, @height))
    end
  end
  
  def draw_1_left_3_l
    if (@wall_index = wall_index(1, -3)) >= 0
      @bitmap.blt(@width * -4.25 + 1 + @start_ox + @offset_x, @y, @right4_3[@wall_index], Rect.new(0, 0, @right4_3[@wall_index].width, @height))
    end
     if (@wall_index = wall_index(1, -3, false)) >= 0
      @bitmap.blt(@width * (0.75 - 2) + @start_ox + @offset_x, @y, @left4_3[@wall_index], Rect.new(0, 0, @left4_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(1, -3)) >= 0
      @bitmap.blt(@width * (0.75 - 2) + @start_ox + @offset_x, @y, @left4_3_gate[@wall_index], Rect.new(0, 0, @left4_3[@wall_index].width, @height))
    end
  end
  
  def draw_1_left_2_l
    y = @height * 6.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 1.5 + @start_ox + @offset_x, y * 2 + @y, @width * 5.5, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(1, -2)) >= 0
      @bitmap.blt(@width * (-3.5)+ @start_ox + @offset_x, @y, @right3_2[@wall_index], Rect.new(0, 0, @right3_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(1, -2)) >= 0
      @bitmap.blt(@width * (-3.5) + @start_ox + @offset_x, @y, @right3_2_gate[@wall_index], Rect.new(0, 0, @right3_2_gate[@wall_index].width, @height))
    end
    if (@wall_index = wall_index(1, -2, false)) >= 0
      @bitmap.blt(@width * (-0.5)+ @start_ox + @offset_x+1, @y, @left3_3[@wall_index], Rect.new(0, 0, @left3_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(1, -2)) >= 0
      @bitmap.blt(@width * (-0.5) + @start_ox + @offset_x+1, @y, @left3_3_gate[@wall_index], Rect.new(0, 0, @left3_3_gate[@wall_index].width, @height))
    end
  end
  
  def draw_3_left_1_l
    if (@wall_index = wall_index(3, -1)) >= 0
      @bitmap.blt(@width * 10.75 + 1 + @start_ox + @offset_x, @y, @right4_3[@wall_index], Rect.new(0, 0, @right4_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(3, -1)) >= 0
      @bitmap.blt(@width * 10.75 + @start_ox + @offset_x, @y, @right4_3_gate[@wall_index], Rect.new(0, 0, @right4_3_gate[@wall_index].width, @height))
    end
    if (@wall_index = wall_index(3, -1, false)) >= 0
      @bitmap.blt(@width * 14.5  -(@left4_2[@wall_index].width / 4)+ @start_ox + @offset_x, @y, @left4_2[@wall_index], Rect.new(0, 0, @left4_2[@wall_index].width + @width * 2, @height))
    end
  end
  
  def draw_3_front_l
    y = @height * 6.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 12.5 + @start_ox + @offset_x, y * 2 + @y, @width * 12, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(3, 0)) >= 0
      @bitmap.blt(@width * (14.5 -1.5) + @start_ox + @offset_x, @y, @right3_3[@wall_index], Rect.new(0, 0, @right3_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(3, 0)) >= 0
      @bitmap.blt(@width * (14.5 -1.5) + @start_ox + @offset_x, @y, @right3_3_gate[@wall_index], Rect.new(0, 0, @right3_3_gate[@wall_index].width, @height))
    end
  end
  
  def draw_2_front_l
    if ((@wall_index = wall_index(2, 0)) >= 0) || ((@wall_index = gate_index_front(2, 0)) >= 0)
      @bitmap.blt(@width * (13 - 3) + @start_ox + @offset_x, @y, @right2_3[@wall_index], Rect.new(0, 0, @right2_3[@wall_index].width, @height))
    else
      y = @height * 5.0 / 7 / 3
      @bitmap.stretch_blt(Rect.new(@width * 13 + @start_ox + @offset_x, y * 2 + @y, @width * 12, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    end
  end
  
  
  def draw_0_left_2_l
    if (@wall_index = wall_index(0, -2, false)) >= 0
      @bitmap.blt(@width * (-11 -3) + @start_ox + @offset_x, @y, @left2_3[@wall_index], Rect.new(0, 0, @left2_3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(0, -2)) >= 0
      @bitmap.blt(@width * (-11 -3) + @start_ox + @offset_x, @y, @left2_3_gate[@wall_index], Rect.new(0, 0, @left2_3_gate[@wall_index].width, @height))
    else
      y = @height * 5.0 / 7 / 3
      @bitmap.stretch_blt(Rect.new(@width * -11 + @start_ox + @offset_x, y * 2 + @y, @width * 12, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    end
  end
  
  def draw_1_left_1_l
    y = @height * 5.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 1 + @start_ox + @offset_x, y * 2 + @y, @width * 12, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(1, -1)) >= 0
      @bitmap.blt(@width * -2 + @start_ox + @offset_x, @y, @right2_2[@wall_index], Rect.new(0, 0, @right2_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(1, -1)) >= 0
      @bitmap.blt(@width * -2 + @start_ox + @offset_x, @y, @right2_2_gate[@wall_index], Rect.new(0, 0, @right2_2_gate[@wall_index].width, @height))
    end
    if (@wall_index = wall_index(1, -1, false)) >= 0
      @bitmap.blt(@width * 4 + @start_ox + @offset_x, @y, @left2_2[@wall_index], Rect.new(0, 0, @left2_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(1, -1)) >= 0
      @bitmap.blt(@width * 4 + @start_ox + @offset_x, @y, @left2_2_gate[@wall_index], Rect.new(0, 0, @left2_2_gate[@wall_index].width, @height))
    else
      #draw_event(@width * 7, 1, -1)
    end
  end
  
  def draw_0_left_1_l
    len = Saba::Three_D::EXTEND_LENGTH
    if (@wall_index = wall_index(0, -1, false)) >= 0
      @bitmap.blt(@width * -3.5 +1-(@left1_2[@wall_index].width / 4) + @start_ox + @offset_x, @y, @left1_2[@wall_index], Rect.new(0, 0, @left1_2[@wall_index].width, @height + len))
    elsif (@wall_index = gate_index_side(0, -1)) >= 0
      @bitmap.blt(@width * -3.5 +1-(@left1_2[@wall_index].width / 4) + @start_ox + @offset_x, @y, @left1_2_gate[@wall_index], Rect.new(0, 0, @left1_2_gate[@wall_index].width, @height + len))
    else
      y = @height * 3.0 / 7 / 3
      @bitmap.stretch_blt(Rect.new(@width * -3.5 + @start_ox + @offset_x, y * 2 + @y, @width * 10.5, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
      
    end
  end
  
  def draw_1_front_l
    len = Saba::Three_D::EXTEND_LENGTH
    if (@wall_index = wall_index(1, 0)) >= 0
      @bitmap.blt(@width * 7 -(@right1_2[@wall_index].width / 4) -1 + @start_ox + @offset_x, @y, @right1_2[@wall_index], Rect.new(0, 0, @right1_2[@wall_index].width, @height + len))
    elsif (@wall_index = gate_index_front(1, 0)) >= 0
      @bitmap.blt(@width * 7 -(@right1_2[@wall_index].width / 4) -1 + @start_ox + @offset_x, @y, @right1_2_gate[@wall_index], Rect.new(0, 0, @right1_2_gate[@wall_index].width, @height + len))
    else
      y = @height * 3.0 / 7 / 3
      @bitmap.stretch_blt(Rect.new(@width * 7 + @start_ox + @offset_x-1, y * 2 + @y, @width * 11, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
      #draw_event(@width * 15, 1, 0)
    end
  end
  
  def draw_normal
    draw_event(@width * 7, 0, 0)
    @bitmap = @bitmaps[1]
    draw_3_left_3
    draw_3_left_2
    
    draw_3_right_3 
    draw_3_right_2
    draw_3_left_1
    draw_3_right_1
    draw_3_front

    @bitmap = @bitmaps[2]
    draw_2_left_3
    draw_2_left_2
    draw_2_left_1

    draw_2_right_3
    draw_2_right_2
    draw_2_right_1
    draw_2_front
    
    @bitmap = @bitmaps[3]
    draw_1_left_2
    draw_1_left_1
    draw_1_right_2
    draw_1_right_1
    draw_1_front
    
    draw_0_left_1
    draw_0_right_1
  end
  
  
  
  def draw_0_left_1
        len = Saba::Three_D::EXTEND_LENGTH
    if (@wall_index = wall_index(0, -1, false)) >= 0
      @bitmap.blt(@width * -7 + @start_ox + @offset_x, @y, @left1[@wall_index], Rect.new(0, 0, @left1[@wall_index].width, @height + len))
    elsif (@wall_index = gate_index_side(0, -1)) >= 0
      @bitmap.blt(@width * -7 + @start_ox + @offset_x, @y, @left1_gate[@wall_index], Rect.new(0, 0, @left1_gate[@wall_index].width, @height + len))
    end
  end
  
  
  
  def draw_0_right_1
        len = Saba::Three_D::EXTEND_LENGTH
    if (@wall_index = wall_index(0, 1, false)) >= 0
      @bitmap.blt(@width * 5 + @start_ox + @offset_x, @y, @right1[@wall_index], Rect.new(0, 0, @right1[@wall_index].width, @height + len))
    elsif (@wall_index = gate_index_side(0, 1)) >= 0
      @bitmap.blt(@width * 5 + @start_ox + @offset_x, @y, @right1_gate[@wall_index], Rect.new(0, 0, @right1_gate[@wall_index].width, @height + len))
    end
  end
  
  def draw_1_front
    if (@wall_index = wall_index(1, 0)) >= 0
      @bitmap.blt(@width * -1 + @start_ox + @offset_x, @y, @front1[@wall_index], Rect.new(0, 0, @front1[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(1, 0)) >= 0
      @bitmap.blt(@width * -1 + @start_ox + @offset_x, @y, @front1_gate[@wall_index], Rect.new(0, 0, @front1_gate[@wall_index].width, @height))
    else
      y = @height * 3.0 / 7 / 3
      @bitmap.stretch_blt(Rect.new(@width * 3 + @start_ox + @offset_x, y * 2 + @y, @width * 8, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
      draw_event(@width * 7, 1, 0)
    end
  end
  
  def draw_1_left_1
    y = @height * 3.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * -5 + @start_ox + @offset_x, y * 2 + @y, @width * 8, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(1, -1, false)) >= 0
      @bitmap.blt(@width * 0 + @start_ox + @offset_x, @y, @left2[@wall_index], Rect.new(0, 0, @left2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(1, -1)) >= 0
      @bitmap.blt(@width * 0 + @start_ox + @offset_x, @y, @left2_gate[@wall_index], Rect.new(0, 0, @left2_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(1, -1, true)) >= 0
      @bitmap.blt(@width * -9 + @start_ox + @offset_x, @y, @front1[@wall_index], Rect.new(0, 0, @front1[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(1, -1)) >= 0
      @bitmap.blt(@width * -9 + @start_ox + @offset_x, @y, @front1_gate[@wall_index], Rect.new(0, 0, @front1_gate[@wall_index].width, @height))
    else
      return if wall_index(0, -1, false) >= 0
      return if gate_index_side(0, -1) >= 0
      draw_event(@width * 1, 1, -1)
    end
  end
  
  def draw_1_right_1
    y = @height * 3.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 11 + @start_ox + @offset_x, y * 2 + @y, @width * 8, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(1, 1, false)) >= 0
      @bitmap.blt(@width * 6 + @start_ox + @offset_x, @y, @right2[@wall_index], Rect.new(0, 0, @right2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(1, 1)) >= 0
      @bitmap.blt(@width * 6 + @start_ox + @offset_x, @y, @right2_gate[@wall_index], Rect.new(0, 0, @right2_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(1, 1)) >= 0
      @bitmap.blt(@width * 7 + @start_ox + @offset_x, @y, @front1[@wall_index], Rect.new(0, 0, @front1[@wall_index].width, @height)) 
    elsif (@wall_index = gate_index_front(1, 1)) >= 0
      @bitmap.blt(@width * 7 + @start_ox + @offset_x, @y, @front1_gate[@wall_index], Rect.new(0, 0, @front1_gate[@wall_index].width, @height))
    else
      return if wall_index(0, 1, false) >= 0
      return if gate_index_side(0, 1) >= 0
      draw_event(@width * 13, 1, 1)
    end
  end
  
  def draw_1_left_2
    if (@wall_index = wall_index(1, -2, false)) >= 0
      @bitmap.blt(@width * -8 + @start_ox + @offset_x, @y, @left2_2[@wall_index], Rect.new(0, 0, @left2_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(1, -2)) >= 0
      @bitmap.blt(@width * -8 + @start_ox + @offset_x, @y, @left2_2_gate[@wall_index], Rect.new(0, 0, @left2_2_gate[@wall_index].width, @height))
    end
  end
  
  def draw_1_right_2
    if (@wall_index = wall_index(1, 2, false)) >= 0
      @bitmap.blt(@width * 10 + @start_ox + @offset_x, @y, @right2_2[@wall_index], Rect.new(0, 0, @right2_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(1, 2)) >= 0
      @bitmap.blt(@width * 10 + @start_ox + @offset_x, @y, @right2_2_gate[@wall_index], Rect.new(0, 0, @right2_2_gate[@wall_index].width, @height))
    end
  end
  
  def draw_2_front
    if (@wall_index = wall_index(2, 0)) >= 0
      @bitmap.blt(@width * 3 + @start_ox + @offset_x, @y, @front2[@wall_index], Rect.new(0, 0, @front2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(2, 0)) >= 0
      @bitmap.blt(@width * 3 + @start_ox + @offset_x, @y, @front2_gate[@wall_index], Rect.new(0, 0, @front2_gate[@wall_index].width, @height))
    else
      y = @height * 5.0 / 7 / 3
      @bitmap.stretch_blt(Rect.new(@width * 5 + @start_ox + @offset_x, y * 2 + @y, @width * 4, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
      draw_event(@width * 7, 2, 0)
    end
  end
  
  def draw_2_right_1
    y = @height * 5.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 9 + @start_ox + @offset_x, y * 2 + @y, @width * 4, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(2, 1, false)) >= 0
      @bitmap.blt(@width * 6.5 + @start_ox + @offset_x, @y, @right3[@wall_index], Rect.new(0, 0, @right3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(2, 1)) >= 0
      @bitmap.blt(@width * 6.5 + @start_ox + @offset_x, @y, @right3_gate[@wall_index], Rect.new(0, 0, @right3_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(2, 1)) >= 0
      @bitmap.blt(@width * 7 + @start_ox + @offset_x, @y, @front2[@wall_index], Rect.new(0, 0, @front2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(2, 1)) >= 0
      @bitmap.blt(@width * 7 + @start_ox + @offset_x, @y, @front2_gate[@wall_index], Rect.new(0, 0, @front2_gate[@wall_index].width, @height))
    else
      draw_event(@width * (10), 2, 1)
    end
  end
  
  def draw_2_right_2
    y = @height * 5.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 13 + @start_ox + @offset_x, y * 2 + @y, @width * 4, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    
    if (@wall_index = wall_index(2, 2, false)) >= 0
      @bitmap.blt(@width * (10 -1.5) + @start_ox + @offset_x, @y, @right3_2[@wall_index], Rect.new(0, 0, @right3_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(2, 2)) >= 0
      @bitmap.blt(@width * (10 -1.5) + @start_ox + @offset_x, @y, @right3_2_gate[@wall_index], Rect.new(0, 0, @right3_2_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(2, 2)) >= 0
      @bitmap.blt(@width * 11 + @start_ox + @offset_x, @y, @front2[@wall_index], Rect.new(0, 0, @front2[@wall_index].width, @height))     
    elsif (@wall_index = gate_index_front(2, 2)) >= 0
      @bitmap.blt(@width * 11 + @start_ox + @offset_x, @y, @front2_gate[@wall_index], Rect.new(0, 0, @front2_gate[@wall_index].width, @height))
    end
  end
  
  def draw_2_left_1
    y = @height * 5.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 1 + @start_ox + @offset_x, y * 2 + @y, @width * 4, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(2, -1, false)) >= 0
      @bitmap.blt(@width * 3.5 + @start_ox + @offset_x+1, @y, @left3[@wall_index], Rect.new(0, 0, @left3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(2, -1)) >= 0
      @bitmap.blt(@width * 3.5 + @start_ox + @offset_x+1, @y, @left3_gate[@wall_index], Rect.new(0, 0, @left3_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(2, -1)) >= 0
      @bitmap.blt(@width * -1 + @start_ox + @offset_x, @y, @front2[@wall_index], Rect.new(0, 0, @front2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(2, -1)) >= 0
      @bitmap.blt(@width * -1 + @start_ox + @offset_x, @y, @front2_gate[@wall_index], Rect.new(0, 0, @front2_gate[@wall_index].width, @height))
    else
      draw_event(@width * (4), 2, -1)
    end
  end
  
  def draw_2_right_3
    if (@wall_index = wall_index(2, 3, false)) >= 0
      @bitmap.blt(@width * (12 -1.5) + @start_ox + @offset_x, @y, @right3_2[@wall_index], Rect.new(0, 0, @right3_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(2, 3)) >= 0
      @bitmap.blt(@width * (12 -1.5) + @start_ox + @offset_x, @y, @right3_2_gate[@wall_index], Rect.new(0, 0, @right3_2_gate[@wall_index].width, @height))
    end
  end
  
  def draw_2_left_2
    y = @height * 5.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * -3 + @start_ox + @offset_x, y * 2 + @y, @width * 4, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(2, -2, false)) >= 0
      @bitmap.blt(@width * -0.5 + @start_ox + @offset_x+1, @y, @left3_2[@wall_index], Rect.new(0, 0, @left3_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(2, -2)) >= 0
      @bitmap.blt(@width * -0.5 + @start_ox + @offset_x+1, @y, @left3_2_gate[@wall_index], Rect.new(0, 0, @left3_2_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(2, -2)) >= 0
      @bitmap.blt(@width * -5 + @start_ox + @offset_x, @y, @front2[@wall_index], Rect.new(0, 0, @front2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(2, -2)) >= 0
      @bitmap.blt(@width * -5 + @start_ox + @offset_x, @y, @front2_gate[@wall_index], Rect.new(0, 0, @front2_gate[@wall_index].width, @height))
    end
  end
  
  def draw_2_left_3
    if (@wall_index = wall_index(2, -3, false)) >= 0
      @bitmap.blt(@width * -2.5 + @start_ox + @offset_x+1, @y, @left3_2[@wall_index], Rect.new(0, 0, @left3_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(2, -3)) >= 0
      @bitmap.blt(@width * -2.5 + @start_ox + @offset_x+1, @y, @left3_2_gate[@wall_index], Rect.new(0, 0, @left3_2_gate[@wall_index].width, @height))
    end
  end
  
  def draw_3_front
    if (@wall_index = wall_index(3, 0)) >= 0
      @bitmap.blt(@width * 5 + @start_ox + @offset_x, @y, @front3[@wall_index], Rect.new(0, 0, @front3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(3, 0)) >= 0
      @bitmap.blt(@width * 5 + @start_ox + @offset_x, @y, @front3_gate[@wall_index], Rect.new(0, 0, @front3_gate[@wall_index].width, @height))
    else
      y = @height * 6.0 / 7 / 3
      @bitmap.stretch_blt(Rect.new(@width * 6 + @start_ox + @offset_x, y * 2 + @y, @width * 2, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
      draw_event(@width * 7, 3, 0)
    end
  end
  
  def draw_3_left_1
    y = @height * 6.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 4 + @start_ox + @offset_x, y * 2 + @y, @width * 2, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(3, -1, false)) >= 0
      @bitmap.blt(@width * 5.25 + @start_ox + @offset_x-1, @y, @left4[@wall_index], Rect.new(0, 0, @left4[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(3, -1)) >= 0
      @bitmap.blt(@width * 5.25 + @start_ox + @offset_x-1, @y, @left4_gate[@wall_index], Rect.new(0, 0, @left4_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(3, -1)) >= 0
      @bitmap.blt(@width * 3 + @start_ox + @offset_x, @y, @front3[@wall_index], Rect.new(0, 0, @front3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(3, -1)) >= 0
      @bitmap.blt(@width * 3 + @start_ox + @offset_x, @y, @front3_gate[@wall_index], Rect.new(0, 0, @front3_gate[@wall_index].width, @height))
    else
      draw_event(@width * 5, 3, -1)
    end
  end
  
  def draw_3_right_1
    y = @height * 6.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 8 + @start_ox + @offset_x, y * 2 + @y, @width * 2, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(3, 1, false)) >= 0
      @bitmap.blt(@width * 6.75 + 1 + @start_ox + @offset_x+1, @y, @right4[@wall_index], Rect.new(0, 0, @right4[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(3, 1)) >= 0
      @bitmap.blt(@width * 6.75 + 1 + @start_ox + @offset_x+1, @y, @right4_gate[@wall_index], Rect.new(0, 0, @right4_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(3, 1)) >= 0
      @bitmap.blt(@width * 7 + @start_ox + @offset_x, @y, @front3[@wall_index], Rect.new(0, 0, @front3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(3, 1)) >= 0
      @bitmap.blt(@width * 7 + @start_ox + @offset_x, @y, @front3_gate[@wall_index], Rect.new(0, 0, @front3_gate[@wall_index].width, @height))
    else
      draw_event(@width * 9, 3, 1)
    end
  end
  
  def draw_3_left_2
    y = @height * 6.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 2 + @start_ox + @offset_x, y * 2 + @y, @width * 2, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(3, -2, false)) >= 0
      @bitmap.blt(@width * 4 -(@left4_2[@wall_index].width / 4) -1 + @start_ox + @offset_x, @y, @left4_2[@wall_index], Rect.new(0, 0, @left4_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(3, -2)) >= 0
      @bitmap.blt(@width * 4 -(@left4_2_gate[@wall_index].width / 4) -1 + @start_ox + @offset_x, @y, @left4_2_gate[@wall_index], Rect.new(0, 0, @left4_2_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(3, -2)) >= 0
      @bitmap.blt(@width * 1 + @start_ox + @offset_x , @y, @front3[@wall_index], Rect.new(0, 0, @front3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(3, -2)) >= 0
      @bitmap.blt(@width * 1 + @start_ox + @offset_x, @y, @front3_gate[@wall_index], Rect.new(0, 0, @front3_gate[@wall_index].width, @height))
    else
      draw_event(@width * 3, 3, -2)
    end
  end
  
  def draw_3_right_2
    y = @height * 6.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 10 + @start_ox + @offset_x, y * 2 + @y, @width * 2, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(3, 2, false)) >= 0
      @bitmap.blt(@width * 8.5 -(@right4_2[@wall_index].width / 4) + @start_ox + @offset_x, @y, @right4_2[@wall_index], Rect.new(0, 0, @right4_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(3, 2)) >= 0
      @bitmap.blt(@width * 8.5 -(@right4_2_gate[@wall_index].width / 4) + @start_ox + @offset_x, @y, @right4_2_gate[@wall_index], Rect.new(0, 0, @right4_2_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(3, 2)) >= 0
      @bitmap.blt(@width * 9 + @start_ox + @offset_x, @y, @front3[@wall_index], Rect.new(0, 0, @front3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(3, 2)) >= 0
      @bitmap.blt(@width * 9 + @start_ox + @offset_x, @y, @front3_gate[@wall_index], Rect.new(0, 0, @front3_gate[@wall_index].width, @height))
    else
      draw_event(@width * 11, 3, 2)
    end
  end
  
  def draw_3_left_3
    y = @height * 6.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 0 + @start_ox + @offset_x, y * 2 + @y, @width * 2, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(3, -3, false)) >= 0
      @bitmap.blt(@width * 2 -(@left4_2[@wall_index].width / 4) -1+ @start_ox + @offset_x, @y, @left4_2[@wall_index], Rect.new(0, 0, @left4_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(3, -3)) >= 0
      @bitmap.blt(@width * 2 -(@left4_2_gate[@wall_index].width / 4) -1+ @start_ox + @offset_x, @y, @left4_2_gate[@wall_index], Rect.new(0, 0, @left4_2_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(3, -3)) >= 0
      @bitmap.blt(@width * -3 + 3 + @start_ox + @offset_x, @y, @front3[@wall_index], Rect.new(0, 0, @front3[@wall_index].width, @height))
      @bitmap.blt(@width * -1 + @start_ox + @offset_x, @y, @front3[@wall_index], Rect.new(0, 0, @front3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(3, -3)) >= 0
      @bitmap.blt(@width * -3 + 3 + @start_ox + @offset_x, @y, @front3_gate[@wall_index], Rect.new(0, 0, @front3_gate[@wall_index].width, @height))
      @bitmap.blt(@width * -1 + @start_ox + @offset_x, @y, @front3_gate[@wall_index], Rect.new(0, 0, @front3_gate[@wall_index].width, @height))
    else
      draw_event(@width * 1, 3, -3)
    end
  end
  
  
  def draw_3_right_3
    y = @height * 6.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 12 + @start_ox + @offset_x, y * 2 + @y, @width * 2, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    
    if (@wall_index = wall_index(3, 3, false)) >= 0
      @bitmap.blt(@width * 10.5 -(@right4_2[@wall_index].width / 4) + @start_ox + @offset_x, @y, @right4_2[@wall_index], Rect.new(0, 0, @right4_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(3, 3)) >= 0
      @bitmap.blt(@width * 10.5 -(@right4_2_gate[@wall_index].width / 4) + @start_ox + @offset_x, @y, @right4_2_gate[@wall_index], Rect.new(0, 0, @right4_2_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(3, 3)) >= 0
      @bitmap.blt(@width * 13 + @start_ox + @offset_x, @y, @front3[@wall_index], Rect.new(0, 0, @front3[@wall_index].width, @height))
      @bitmap.blt(@width * 11 + @start_ox + @offset_x, @y, @front3[@wall_index], Rect.new(0, 0, @front3[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(3, 3)) >= 0
      @bitmap.blt(@width * 13 + @start_ox + @offset_x, @y, @front3_gate[@wall_index], Rect.new(0, 0, @front3_gate[@wall_index].width, @height))
      @bitmap.blt(@width * 11 + @start_ox + @offset_x, @y, @front3_gate[@wall_index], Rect.new(0, 0, @front3_gate[@wall_index].width, @height))
    else
      draw_event(@width * 13, 3, 3)
    end
  end
  
  
  def draw_45_left_1
    if (@wall_index = wall_index(4, -1, false)) >= 0
      @bitmap.blt(@width * (6.25 - 0.1875) + @start_ox + @offset_x+1, @y, @left45[@wall_index], Rect.new(0, 0, @width - 1, @height))
    end
    
    if (@wall_index = wall_index(4, -1)) >= 0
      @bitmap.blt(@width * 4 -3 + @start_ox + @offset_x, @y, @front45[@wall_index], Rect.new(0, 0, @front45[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(4, -1)) >= 0
      @bitmap.blt(@width * 4 -3+ @start_ox + @offset_x, @y, @front45_gate[@wall_index], Rect.new(0, 0, @front45_gate[@wall_index].width, @height))
    end  
  end
  
  def draw_45_left_2
    if (@wall_index = wall_index(4, -2)) >= 0
      @bitmap.blt(@width * 2 + @start_ox + @offset_x-1, @y, @front45[@wall_index], Rect.new(0, 0, @front45[@wall_index].width, @height))
      @bitmap.blt(@width * 2.5 + @start_ox + @offset_x-1, @y, @front45[@wall_index], Rect.new(0, 0, @front45[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(4, -2)) >= 0
      @bitmap.blt(@width * 2 + @start_ox + @offset_x-1, @y, @front45_gate[@wall_index], Rect.new(0, 0, @front45_gate[@wall_index].width, @height))
      @bitmap.blt(@width * 2.5 + @start_ox + @offset_x-1, @y, @front45_gate[@wall_index], Rect.new(0, 0, @front45_gate[@wall_index].width, @height))
    end
  end
  
  def draw_45_left_3
    if (@wall_index = wall_index(4, -3)) >= 0
      @bitmap.blt(@width * 0.5 + @start_ox + @offset_x, @y, @front45[@wall_index], Rect.new(0, 0, @front45[@wall_index].width, @height))
      @bitmap.blt(@width * -1 + @start_ox + @offset_x, @y, @front45[@wall_index], Rect.new(0, 0, @front45[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(4, -3)) >= 0
      @bitmap.blt(@width * 0.5 + @start_ox + @offset_x, @y, @front45_gate[@wall_index], Rect.new(0, 0, @front45_gate[@wall_index].width, @height))
      @bitmap.blt((@width * -1) + @start_ox + @offset_x, @y, @front45_gate[@wall_index], Rect.new(0, 0, @front45_gate[@wall_index].width, @height))
    end
  end
  
  def draw_45_right_1
    if (@wall_index = wall_index(4, 1)) >= 0
      @bitmap.blt((@width * 7).round()  + @start_ox + @offset_x, @y, @front45[@wall_index], Rect.new(0, 0, @front45[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(4, 1)) >= 0
      @bitmap.blt((@width * 7).round()  + @start_ox + @offset_x, @y, @front45_gate[@wall_index], Rect.new(0, 0, @front45_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(4, 1, false)) >= 0
      @bitmap.blt((@width * 7.5).round() +3 +@start_ox + @offset_x -5, @y, @right45[@wall_index], Rect.new(0, 0, @right45[@wall_index].width, @height))
    end
  end
  
  def draw_45_right_2
    if (@wall_index = wall_index(4, 2)) >= 0
      @bitmap.blt((@width * 8.5).round() -1+ @start_ox + @offset_x, @y, @front45[@wall_index], Rect.new(0, 0, @front45[@wall_index].width, @height))
      @bitmap.blt((@width * 10).round + @start_ox + @offset_x, @y, @front45[@wall_index], Rect.new(0, 0, @front45[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(4, 2)) >= 0
      @bitmap.blt((@width * 8.5).round() -1+ @start_ox + @offset_x, @y, @front45_gate[@wall_index], Rect.new(0, 0, @front45_gate[@wall_index].width, @height))
      @bitmap.blt((@width * 10).round + @start_ox + @offset_x, @y, @front45_gate[@wall_index], Rect.new(0, 0, @front45_gate[@wall_index].width, @height))
    end
  end
  
  def draw_45_right_3
    if (@wall_index = wall_index(4, 3)) >= 0
       @bitmap.blt((@width * 11.5).round + @start_ox + @offset_x, @y, @front45[@wall_index], Rect.new(0, 0, @front45[@wall_index].width, @height))
       @bitmap.blt((@width * 13).round + @start_ox + @offset_x, @y, @front45[@wall_index], Rect.new(0, 0, @front45[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(4, 3)) >= 0
      @bitmap.blt((@width * 11.5).round + @start_ox + @offset_x, @y, @front45_gate[@wall_index], Rect.new(0, 0, @front45_gate[@wall_index].width, @height))
      @bitmap.blt((@width * 13).round + @start_ox + @offset_x, @y, @front45[@wall_index], Rect.new(0, 0, @front45[@wall_index].width, @height))
    end
  end
  
  def draw_45_front
    y = @height * 6.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * -1 + @start_ox + @offset_x, y * 2 + @y, @width * 5, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    @bitmap.stretch_blt(Rect.new(@width * 10 + @start_ox + @offset_x, y * 2 + @y, @width * 5, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
  end
  
  def draw_35_front
    if (@wall_index = wall_index(4, 0)) >= 0
      @bitmap.blt((@width * 5.5).round() -2  + @start_ox + @offset_x, @y, @front45[@wall_index], Rect.new(0, 0, @front45[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(4, 0)) >= 0
      @bitmap.blt((@width * 5.5).round() -2 + @start_ox + @offset_x, @y, @front45_gate[@wall_index], Rect.new(0, 0, @front45_gate[@wall_index].width, @height))
    else
      draw_event(@width * 7, 4, 0, true)
    end
  end
  
  def draw_35_right_1
    y = @height * 6.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 8 + @start_ox + @offset_x, y * 2 + @y, @width * 2, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(3, 1, false)) >= 0
      @bitmap.blt(@width * (7 - 0.325)  + @start_ox + @offset_x, @y, @right35[@wall_index], Rect.new(0, 0, @right35[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(3, 1)) >= 0
      @bitmap.blt(@width * (7 - 0.325)  + @start_ox + @offset_x, @y, @right35_gate[@wall_index], Rect.new(0, 0, @right35_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(3, 1)) >= 0
      @bitmap.blt(@width * 7  + @start_ox + @offset_x, @y, @front35[@wall_index], Rect.new(0, 0, @front35[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(3, 1)) >= 0
      @bitmap.blt(@width * 7  + @start_ox + @offset_x, @y, @front35_gate[@wall_index], Rect.new(0, 0, @front35_gate[@wall_index].width, @height))
    else
      draw_event(@width * 9.5, 3, 1, true)
    end
  end
  
  def draw_35_right_2
    
    if (@wall_index = wall_index(3, 2, false)) >= 0
      @bitmap.blt((@width * 9.25).round() -(@right35_2[@wall_index].width / 4) + @start_ox + @offset_x, @y, @right35_2[@wall_index], Rect.new(0, 0, @right35_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(3, 2)) >= 0
      @bitmap.blt((@width * 9.25).round() -(@right35_2_gate[@wall_index].width / 4) + @start_ox + @offset_x, @y, @right35_2_gate[@wall_index], Rect.new(0, 0, @right35_2_gate[@wall_index].width, @height))
    end
    if (@wall_index = wall_index(3, 2)) >= 0
      @bitmap.blt(@width * 10 -1 + @start_ox + @offset_x, @y, @front35[@wall_index], Rect.new(0, 0, @front35[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(3, 2)) >= 0
      @bitmap.blt(@width * 10 -1 + @start_ox + @offset_x, @y, @front35_gate[@wall_index], Rect.new(0, 0, @front35_gate[@wall_index].width, @height))
    end
  end
  
  def draw_35_right_3
    if (@wall_index = wall_index(3, 3, false)) >= 0
      @bitmap.blt(@width * 11.25 -(@right35_2[@wall_index].width / 4) + @start_ox + @offset_x, @y, @right35_2[@wall_index], Rect.new(0, 0, @right35_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(3, 3)) >= 0
      @bitmap.blt(@width * 11.25 -(@right35_2_gate[@wall_index].width / 4) + @start_ox + @offset_x, @y, @right35_2_gate[@wall_index], Rect.new(0, 0, @right35_2_gate[@wall_index].width, @height))
    end
    if (@wall_index = wall_index(3, 3)) >= 0
      @bitmap.blt(@width * 12 -1 + @start_ox + @offset_x, @y, @front35[@wall_index], Rect.new(0, 0, @front35[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(3, 3)) >= 0
      @bitmap.blt(@width * 12 -1 + @start_ox + @offset_x, @y, @front35_gate[@wall_index], Rect.new(0, 0, @front35_gate[@wall_index].width, @height))
    end
    
  end
  
  def draw_35_left_3
    if (@wall_index = wall_index(3, -3, false)) >= 0
      @bitmap.blt(@width * 0.5 -(@left35_2[@wall_index].width / 4) + @start_ox + @offset_x+1, @y, @left35_2[@wall_index], Rect.new(0, 0, @left35_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(3, -3)) >= 0
      @bitmap.blt(@width * 0.5 -(@left35_2_gate[@wall_index].width / 4) + @start_ox + @offset_x+1, @y, @left35_2_gate[@wall_index], Rect.new(0, 0, @left35_2_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(3, -3)) >= 0
      @bitmap.blt(@width * -4 +1 + @start_ox + @offset_x, @y, @front35[@wall_index], Rect.new(0, 0, @front35[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(3, -3)) >= 0
      @bitmap.blt(@width * -4 +1 + @start_ox + @offset_x, @y, @front35_gate[@wall_index], Rect.new(0, 0, @front35_gate[@wall_index].width, @height))
    end
  end
  
  def draw_35_left_2
    if (@wall_index = wall_index(3, -2, false)) >= 0
      @bitmap.blt(@width * 2.5 -(@left35_2[@wall_index].width / 4) + @start_ox + @offset_x, @y, @left35_2[@wall_index], Rect.new(0, 0, @left35_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(3, -2)) >= 0
      @bitmap.blt(@width * 2.5 -(@left35_2_gate[@wall_index].width / 4)+ @start_ox + @offset_x, @y, @left35_2_gate[@wall_index], Rect.new(0, 0, @left35_2_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(3, -2)) >= 0
      @bitmap.blt(@width * -2 +1 + @start_ox + @offset_x, @y, @front35[@wall_index], Rect.new(0, 0, @front35[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(3, -2)) >= 0
      @bitmap.blt(@width * -2 +1 + @start_ox + @offset_x, @y, @front35_gate[@wall_index], Rect.new(0, 0, @front35_gate[@wall_index].width, @height))
    end
  end
  
  def draw_35_left_1
    y = @height * 6.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 4 + @start_ox + @offset_x, y * 2 + @y, @width * 2, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(3, -1, false)) >= 0
      @bitmap.blt(@width * (4.75 -0.325) -2 + @start_ox + @offset_x, @y, @left35[@wall_index], Rect.new(0, 0, @left35[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(3, -1)) >= 0
      @bitmap.blt(@width * (4.75 -0.325) -2 + @start_ox + @offset_x, @y, @left35_gate[@wall_index], Rect.new(0, 0, @left35_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(3, -1)) >= 0
      @bitmap.blt(@width * 1  + @start_ox + @offset_x+1, @y, @front35[@wall_index], Rect.new(0, 0, @front35[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(3, -1)) >= 0
      @bitmap.blt(@width * 1  + @start_ox + @offset_x+1, @y, @front35_gate[@wall_index], Rect.new(0, 0, @front35_gate[@wall_index].width, @height))
    else
      draw_event(@width * 4.5, 3, -1, true)
    end
  end
  
  def draw_25_right_3
    if (@wall_index = wall_index(2, 3, false)) >= 0
      @bitmap.blt(@width * 13.5 -(@right25_2[@wall_index].width / 4) + @start_ox + @offset_x, @y, @right25_2[@wall_index], Rect.new(0, 0, @right25_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(2, 3)) >= 0
      @bitmap.blt(@width * 13.5 -(@right25_2_gate[@wall_index].width / 4) + @start_ox + @offset_x, @y, @right25_2_gate[@wall_index], Rect.new(0, 0, @right25_2_gate[@wall_index].width, @height))
    end
  end
  
  def draw_25_right_2
    if (@wall_index = wall_index(2, 2, false)) >= 0
      @bitmap.blt(@width * 11.5 -(@right25_2[@wall_index].width / 4) -2+ @start_ox + @offset_x, @y, @right25_2[@wall_index], Rect.new(0, 0, @right25_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(2, 2)) >= 0
      @bitmap.blt(@width * 11.5 -(@right25_2_gate[@wall_index].width / 4) -2+ @start_ox + @offset_x, @y, @right25_2_gate[@wall_index], Rect.new(0, 0, @right25_2_gate[@wall_index].width, @height))
    else
      y = @height * 5.0 / 7 / 3
      @bitmap.stretch_blt(Rect.new(@width * 13 + @start_ox + @offset_x, y * 2 + @y, @width * 2, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    end
  end
  
  def draw_25_left_3
    if (@wall_index = wall_index(2, -3, false)) >= 0
      @bitmap.blt(@width * -4 -(@left25_2[@wall_index].width / 4) + @start_ox + @offset_x, @y, @left25_2[@wall_index], Rect.new(0, 0, @left25_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(2, -3)) >= 0
      @bitmap.blt(@width * -4 -(@left25_2_gate[@wall_index].width / 4) + @start_ox, @y, @left25_2_gate[@wall_index], Rect.new(0, 0, @left25_2_gate[@wall_index].width, @height))
    end
  end
  
  def draw_25_left_2
    if (@wall_index = wall_index(2, -2, false)) >= 0
      @bitmap.blt(@width * -2 + 1 -(@left25_2[@wall_index].width / 4)+ @start_ox + @offset_x, @y, @left25_2[@wall_index], Rect.new(0, 0, @left25_2[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(2, -2)) >= 0
      @bitmap.blt(@width * -2 + 1 -(@left25_2_gate[@wall_index].width / 4) + @start_ox + @offset_x, @y, @left25_2_gate[@wall_index], Rect.new(0, 0, @left25_2_gate[@wall_index].width, @height))
    else
      y = @height * 5.0 / 7 / 3
      @bitmap.stretch_blt(Rect.new(@width * -1 + @start_ox + @offset_x, y * 2 + @y, @width * 2, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    end
  end
  
  def draw_25_left_1
    y = @height * 5.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 1 + @start_ox + @offset_x, y * 2 + @y, @width * 4, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(2, -1, false)) >= 0
      @bitmap.blt(@width * 1.75 +1 + @start_ox + @offset_x, @y, @left25[@wall_index], Rect.new(0, 0, @left25[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(2, -1)) >= 0
      @bitmap.blt(@width * 1.75 +1 + @start_ox + @offset_x, @y, @left25_gate[@wall_index], Rect.new(0, 0, @left25_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(2, -1)) >= 0
      @bitmap.blt(@width * -5 +1 + @start_ox + @offset_x, @y, @front25[@wall_index], Rect.new(0, 0, @front25[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(2, -1)) >= 0
      @bitmap.blt(@width * -5 +1 + @start_ox + @offset_x, @y, @front25_gate[@wall_index], Rect.new(0, 0, @front25_gate[@wall_index].width, @height))
    else
      draw_event(@width * 2.5, 2, -1, true)
    end
  end
  
  def draw_25_right_1

    y = @height * 5.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 9 + @start_ox + @offset_x, y * 2 + @y, @width * 4, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(2, 1, false)) >= 0
      @bitmap.blt((@width * 6.25).round() +1 + @start_ox + @offset_x, @y, @right25[@wall_index], Rect.new(0, 0, @right25[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(2, 1)) >= 0
      @bitmap.blt((@width * 6.25).round() +1 + @start_ox + @offset_x, @y, @right25_gate[@wall_index], Rect.new(0, 0, @right25_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(2, 1)) >= 0
      @bitmap.blt(@width * 7 -1 + @start_ox + @offset_x, @y, @front25[@wall_index], Rect.new(0, 0, @front25[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(2, 1)) >= 0
      @bitmap.blt(@width * 7 -1 + @start_ox + @offset_x, @y, @front25_gate[@wall_index], Rect.new(0, 0, @front25_gate[@wall_index].width, @height))
    else
      draw_event(@width * 11.5, 2, 1, true)
    end
  end
  
  def draw_25_front
    y = @height * 6.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 6 + @start_ox + @offset_x, y * 2 + @y, @width * 2, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(3, 0)) >= 0
      @bitmap.blt(@width * 4 + @start_ox + @offset_x, @y, @front35[@wall_index], Rect.new(0, 0, @front35[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(3, 0)) >= 0
      @bitmap.blt(@width * 4 + @start_ox + @offset_x, @y, @front35_gate[@wall_index], Rect.new(0, 0, @front35_gate[@wall_index].width, @height))
    else
      draw_event(@width * 7, 3, 0, true)
    end
    
  end
  
  def draw_15_front
    y = @height * 5.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 5 + @start_ox + @offset_x , y * 2 + @y, @width * 4, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    if (@wall_index = wall_index(2, 0)) >= 0
      @bitmap.blt(@width * 1 + @start_ox + @offset_x, @y, @front25[@wall_index], Rect.new(0, 0, @front25[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(2, 0)) >= 0
      @bitmap.blt(@width * 1 + @start_ox + @offset_x, @y, @front25_gate[@wall_index], Rect.new(0, 0, @front25_gate[@wall_index].width, @height))
    else
      draw_event(@width * 7, 2, 0, true)
    end
  end
  
  def draw_15_left_1
    y = @height * 3.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * -1 + @start_ox + @offset_x, y * 2 + @y, @width * 4, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    
    if (@wall_index = wall_index(1, -1, false)) >= 0
      @bitmap.blt(@width * -3.5+ @start_ox + @offset_x + 1, @y, @left15[@wall_index], Rect.new(0, 0, @left15[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(1, -1)) >= 0
      @bitmap.blt(@width * -3.5+@start_ox + @offset_x + 1, @y, @left15_gate[@wall_index], Rect.new(0, 0, @left15_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(1, -1)) >= 0
      @bitmap.blt(@width * -17 + @start_ox + @offset_x + 1, @y, @front05[@wall_index], Rect.new(0, 0, @front05[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(1, -1)) >= 0
      @bitmap.blt(@width * -17 +@start_ox + @offset_x + 1, @y, @front05_gate[@wall_index], Rect.new(0, 0, @front05_gate[@wall_index].width, @height))
    end
  end
  
  def draw_15_right_1
    y = @height * 3.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 11 + @start_ox + @offset_x, y * 2 + @y, @width * 4, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(1, 1, false)) >= 0
      @bitmap.blt(@width * 5.5+1 + @start_ox + @offset_x, @y, @right15[@wall_index], Rect.new(0, 0, @right15[@wall_index].width, @height))
    elsif (@wall_index = gate_index_side(1, 1)) >= 0
      @bitmap.blt(@width * 5.5+1 + @start_ox + @offset_x, @y, @right15_gate[@wall_index], Rect.new(0, 0, @right15_gate[@wall_index].width, @height))
    end
    
    if (@wall_index = wall_index(1, 1)) >= 0
      @bitmap.blt(@width * 7 -1 + @start_ox + @offset_x, @y, @front05[@wall_index], Rect.new(0, 0, @front05[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(1, 1)) >= 0
      @bitmap.blt(@width * 7 -1 + @start_ox + @offset_x, @y, @front05_gate[@wall_index], Rect.new(0, 0, @front05_gate[@wall_index].width, @height))
    end
  end
  
  def draw_05_left_1
    if ((@wall_index = wall_index(0, -1, false)) >= 0) || (@wall_index = gate_index_side(0, -1)) >= 0
      len = Saba::Three_D::EXTEND_LENGTH 
      @bitmap.blt(@width * -14  + @start_ox + @offset_x , @y, @left05[@wall_index], Rect.new(0, 0, @left05[@wall_index].width, @height + len))
    end
  end
  
  def draw_05_right_1
    if ((@wall_index = wall_index(0, 1, false)) >= 0) || (@wall_index = gate_index_side(0, 1)) >= 0
      len = Saba::Three_D::EXTEND_LENGTH 
      @bitmap.blt(@width * 4 -1 + @start_ox + @offset_x, @y, @right05[@wall_index], Rect.new(0, 0, @right05[@wall_index].width, @height + len))
    end
  end
  
  def draw_05_front
    y = @height * 3.0 / 7 / 3
    @bitmap.stretch_blt(Rect.new(@width * 3 + @start_ox + @offset_x, y * 2 + @y, @width * 8, @height - y * 3), @dark, Rect.new(0, 0, @dark.width, @dark.height))
    
    if (@wall_index = wall_index(1, 0)) >= 0
      @bitmap.blt(@width * -5 + @start_ox + @offset_x, @y, @front05[@wall_index], Rect.new(0, 0, @front05[@wall_index].width, @height))
    elsif (@wall_index = gate_index_front(1, 0)) >= 0
      @bitmap.blt(@width * -5 + @start_ox + @offset_x, @y, @front05_gate[@wall_index], Rect.new(0, 0, @front05_gate[@wall_index].width, @height))
    else
      draw_event(@width * 7, 1, 0, true)
    end
  end
end