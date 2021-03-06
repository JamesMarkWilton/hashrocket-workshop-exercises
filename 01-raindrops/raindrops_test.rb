# Raindrops
# Source: http://exercism.io/exercises/ruby/raindrops

# Write a program that converts a number to a string, the contents of which
# depends on the number's prime factors.

# If the number contains 3 as a prime factor, output 'Pling'.  If the number
# contains 5 as a prime factor, output 'Plang'.  If the number contains 7 as a
# prime factor, output 'Plong'.  If the number does not contain 3, 5, or 7 as a
# prime factor, just pass the number's digits straight through.

# Examples:
# * 28's prime-factorization is 2, 2, 7.  In raindrop-speak, this would be a simple
# "Plong".
# * 1755' prime-factorization is 3, 3, 3, 5, 13. In raindrop-speak,
# this would be a "PlingPlang".
# * The prime factors of 34 are 2 and 17.  Raindrop-speak doesn't know what to
# make of that, so it just goes with the straightforward "34".

# Extensions: Add a REPL-style user interface that acceps a max and min value
# and returns the 'Raindrops' output for that range, or accepts a single number
# and returns the 'Raindrops' value for that number.

require 'minitest/autorun'
require 'minitest/rg'
require_relative 'raindrops'

class RaindropsTest < Minitest::Test
  def test_if_return_as_string
    assert_equal '1', Raindrops.convert(1)
    assert_equal '34', Raindrops.convert(34)
  end

  def test_check_for_3
    assert_equal "Pling", Raindrops.convert(3)
  end

  def test_check_for_5
    assert_equal "Plang", Raindrops.convert(5)
  end

  def test_check_for_7
    assert_equal "Plong", Raindrops.convert(7)
  end

  def test_check_for_3_and_5
    assert_equal "PlingPlang", Raindrops.convert(1755)
  end
end
