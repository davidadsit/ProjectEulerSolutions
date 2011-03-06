class Problem2
  def self.Solution
    new.solve
  end

  def solve
    series = []
    series.push 1
    series.push 2
    while series[series.length - 1] < 4000000
      ultimate = series[series.length - 1]
      penultimate = series[series.length - 2]
      series.push ultimate + penultimate
    end
    sum = 0
    series.each { |x| sum = sum + x if x % 2 == 0 }
    sum.to_s + " series: " + series.inspect
  end
end