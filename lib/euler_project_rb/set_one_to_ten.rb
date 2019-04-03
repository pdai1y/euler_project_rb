module EulerProject
  module SetOneToTen
    
    # Problem 1
    #
    # If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
    # The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.
    def multiples_of_3_and_5(range)
      multiples = []

      range.each do |i|
        multiples << i if ((i.to_f / 3.0) % 1).zero? || ((i.to_f / 5.0) % 1).zero?
      end

      multiples.sum
    end

  end
end
    