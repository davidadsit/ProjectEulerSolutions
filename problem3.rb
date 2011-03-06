class Problem3
  def self.Solution
    new.solve 600851475143 
  end

  def factorize(numberToFactorize)
    factors = []
    root = Math.sqrt numberToFactorize
    (2..root).each do |x|
      factors.push x if numberToFactorize % x == 0
    end
    factors
  end

  def solve(numberToFactorize)
    factors = factorize(numberToFactorize)
    primeFactors = []
    factors.each do |x|
      primeFactors.push(x) unless factorize(x).length > 0
    end
    primeFactors[primeFactors.length - 1].to_s + " all prime factors: " + primeFactors.inspect
  end
end
