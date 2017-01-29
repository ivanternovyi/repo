class TennisScorer

OPPOSITE_SIDE_OF_NET = { :server => :receiver, :receiver => :server}

  def initialize
    @score = {:server =>0, :receiver => 0}
  end

  def score
    if @score[:server] == 4
      "W-L"
    elsif @score[:receiver] == 4
      "L-W"
    else
      "#{@score[:server]*15}-#{@score[:receiver]*15}"
    end
  end

  def give_point_to(player)
    other = OPPOSITE_SIDE_OF_NET[player]
    fail "Unknown player #{player}" unless other
    @score[player] += 1
  end

end
