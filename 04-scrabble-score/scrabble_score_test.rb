# Scrabble Score
# http://exercism.io/exercises/ruby/scrabble-score

# Write a program that, given a word, computes the scrabble score for that word.

# Letter Values
# You'll need these:

# Letter                           Value
# A, E, I, O, U, L, N, R, S, T       1
# D, G                               2
# B, C, M, P                         3
# F, H, V, W, Y                      4
# K                                  5
# J, X                               8
# Q, Z                               10

# Examples
# "cabbage" should be scored as worth 14 points:

# 3 points for C
# 1 point for A, twice
# 3 points for B, twice
# 2 points for G
# 1 point for E
# And to total:

# 3 + 2 * 1 + 2 * 3 + 2 + 1
# = 3 + 2 + 6 + 3
# = 5 + 9
# = 14

# Extensions
# You can play a :double or a :triple letter.
# You can play a :double or a :triple word.

require 'minitest/autorun'
require 'minitest/rg'
require_relative 'scrabble_score'

class ScrabbleTest < Minitest::Test
  def test_empty_word_scores_zero
    assert_equal 0, Scrabble.new('').score
  end

  def test_1_points_for_A_and_rep
    assert_equal 1, Scrabble.new('A').score
    assert_equal 2, Scrabble.new('Aa').score
  end

  def test_2_points_for_G_and_rep
    assert_equal 2, Scrabble.new('G').score
    assert_equal 4, Scrabble.new('Gg').score
  end

  def test_3_points_for_B_and_rep
    assert_equal 3, Scrabble.new('B').score
    assert_equal 6, Scrabble.new('Bb').score
  end

  def test_4_points_for_H_and_rep
    assert_equal 4, Scrabble.new('H').score
    assert_equal 8, Scrabble.new('Hh').score
  end

  def test_5_points_for_K_and_rep
    assert_equal 5, Scrabble.new('K').score
    assert_equal 10, Scrabble.new('Kk').score
  end

  def test_8_points_for_X_and_rep
    assert_equal 8, Scrabble.new('X').score
    assert_equal 16, Scrabble.new('Xx').score
  end

  def test_10_points_for_Z_and_rep
    assert_equal 10, Scrabble.new('Z').score
    assert_equal 20, Scrabble.new('Zz').score
  end

  def test_words_return_right_score
    assert_equal 12, Scrabble.new('kiTTy').score
    refute_equal 10, Scrabble.new('Mat').score
  end
end
