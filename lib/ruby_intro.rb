# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each { |item| sum += item }
  return sum
end

def max_2_sum arr
  while arr.length < 2
    arr.push(0)
  end
  arr.sort!.reverse!
  arr[0] + arr[1]
end

# sum_to_n?([-1,-2,3,4,6,-8], 12)
def sum_to_n? arr, n
  arr.combination(2).each do |subarr|
    if subarr[0] + subarr[1] == n
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s.downcase.match(/\A[[[:alpha:]]&&[^aeiou]]/)
end

def binary_multiple_of_4? s
  if s.match(/\A[01]+\Z/)
    return s.to_i(2) % 4 == 0
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError.new("Must provide a non-empty ISBN")
    end
    @isbn = isbn
    if price <= 0
      raise ArgumentError.new("Must provide a price more than nothing")
    end
    @price = price.to_f
  end

  def price_as_string
    return "$#{'%.2f' % @price}"
  end
end
