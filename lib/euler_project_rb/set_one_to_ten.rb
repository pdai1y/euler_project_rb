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

    # Problem 2
    #
    # Each new term in the Fibonacci sequence is generated by adding the previous two terms.
    # By starting with 1 and 2, the first 10 terms will be: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
    # By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
    def even_fibonacci_numbers
      num_array = [1, 2]
      new_sum = 0

      loop do
        new_sum = num_array.last(2).sum
        num_array << new_sum unless new_sum >= 4000000 and break
      end

      num_array.select { |n| n.even? }.sum
    end

    # Problem 3
    #
    # The prime factors of 13195 are 5, 7, 13 and 29.
    # Find the largest prime factor of 600851475143 
    def largest_prime_factor(number, prime_amount)
      primes = get_primes(prime_amount)

      result = []
      # [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31]
      primes.each do |p|
        temp_result = 0 
        until prime?(temp_result)
          temp_result = (number / p)
        end
        
        result << temp_result
        # Return the last element of the array if all numbers in array multiply into the given number
        #return result.last if result.inject(:*) == number
        result
      end
    end

    private

    def get_primes(n)
      numbers_array = (2..)
      primes = []

      numbers_array.each do |num|
        primes << num if prime?(num)
        break if primes.length >= n
      end

      primes
    end

    def prime?(n)
      (2..Math.sqrt(n)).none? { |f| n % f == 0 }
    end

  end
end
    