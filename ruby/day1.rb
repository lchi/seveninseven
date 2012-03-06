class Guesser
  def initialize
    @number = rand(10)
  end

  def guess(x)
    @number == x
  end

end

g = Guesser.new

gets until g.guess($_.to_i)
