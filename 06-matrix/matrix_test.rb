# Matrix
# http://exercism.io/exercises/ruby/matrix

# Write a program that, given a string representing a matrix of numbers, can
# return the rows and columns of that matrix.

# So given a string with embedded newlines like:

# 9 8 7 5 3 2 6 6 7
# representing this matrix:

#     0  1  2
#   |---------
# 0 | 9  8  7
# 1 | 5  3  2
# 2 | 6  6  7
# your code should be able to spit out:

# A list of the rows, reading each row left-to-right while moving top-to-bottom across the rows,
# A list of the columns, reading each column top-to-bottom while moving from left-to-right.
# The rows for our example matrix:

# 9, 8, 7
# 5, 3, 2
# 6, 6, 7
# And its columns:

# 9, 5, 6
# 8, 3, 6
# 7, 2, 7

require 'minitest/autorun'
require 'minitest/rg'
require_relative 'matrix'

class MatrixTest < Minitest::Test
  def test_extract_a_row
    matrix = Matrix.new("1 2\n10 20")
    assert_equal [1, 2], matrix.rows(0)
  end

  def test_extract_a_column
    matrix = Matrix.new("1 2\n10 20")
    assert_equal [1, 10], matrix.columns(0)
  end

  def test_that_it_returns_the_rows
    assert_equal [9, 8, 7], Matrix.new("9 8 7\n5 3 2\n6 6 7").rows[0]
    assert_equal [5, 3, 2], Matrix.new("9 8 7\n5 3 2\n6 6 7").rows[1]
    assert_equal [6, 6, 7], Matrix.new("9 8 7\n5 3 2\n6 6 7").rows[2]
  end

  def test_that_it_returns_the_coloumns
    assert_equal [9, 5, 6], Matrix.new("9 8 7\n5 3 2\n6 6 7").columns(0)
    assert_equal [8, 3, 6], Matrix.new("9 8 7\n5 3 2\n6 6 7").columns(1)
    assert_equal [7, 2, 7], Matrix.new("9 8 7\n5 3 2\n6 6 7").columns(2)
  end
end
