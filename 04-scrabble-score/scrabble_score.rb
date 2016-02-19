class Scrabble

ONE =   ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T']
TWO =   ['D', 'G']
THREE = ['B', 'C', 'M', 'P']
FOUR =  ['F', 'H', 'V', 'W', 'Y']
FIVE =  ['K']
EIGHT = ['J', 'X']
TEN =   ['Q', 'Z']

  def initialize(word)
    @word = word.upcase.chars

    @score = 0
  end

  def score
    @word.each { |x| @score += 1 if ONE.include? x }
    @word.each { |x| @score += 2 if TWO.include? x }
    @word.each { |x| @score += 3 if THREE.include? x }
    @word.each { |x| @score += 4 if FOUR.include? x }
    @word.each { |x| @score += 5 if FIVE.include? x }
    @word.each { |x| @score += 8 if EIGHT.include? x }
    @word.each { |x| @score += 10 if TEN.include? x }

    @score
  end
end

