 class Raindrops

   def self.conver arg
     arg = arg.to_i
    if arg % 3 == 0 and arg % 5 == 0
      "PlingPlang"
    if arg % 3 == 0
      anws = "Pling"
    elsif arg % 5 == 0
      anws = "Plang"
    elsif arg % 7 == 0
      anws = "Plong"
    else
      anws = arg.to_s
    end
  end

end
