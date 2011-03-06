class Problem1
  def self.Print10
    problem = Problem1.new
    puts problem.solve 10
  end

  def self.Solution
    new.solve 1000
  end

  def solve(max)
    sum = 0
    (0...max).each do |x|
      if x % 3 == 0 or x % 5 == 0
        sum = sum + x
      end
    end
    sum
  end
end