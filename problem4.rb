class Problem4
  def self.Solution
    new.solve
  end

  def solve
    (100..998).reverse_each do |seed|
      palindrome = (seed.to_s + seed.to_s.reverse).to_i
      (316...999).reverse_each do |factor|
        if palindrome % factor == 0 and (palindrome / factor) < 1000
          return palindrome.to_s + " factors: " + factor.to_s + ", " + (palindrome / factor).to_s
        end
      end
    end
  end
end