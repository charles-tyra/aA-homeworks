class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { Array.new }
    place_stones
  end

  def place_stones
    i = 0 
    while i < 14
      @cups[i] = [:stone, :stone, :stone, :stone] if ( i != 6 && i != 13 )
      i += 1
    end
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if start_pos > 14 || start_pos < 0
    raise 'Starting cup is empty' if @cups[start_pos].empty?
    true
  end

  def make_move(start_pos, current_player_name)
    if valid_move?(start_pos)

      stones = @cups[start_pos].length
      @cups[start_pos] = []

      while stones > 0
        start_pos += 1
        start_pos = start_pos % 14
        start_pos += 1 if (start_pos == 13)
        start_pos = start_pos % 14
        @cups[start_pos] << :stone
        stones -= 1
      end

      
      render
    end
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
