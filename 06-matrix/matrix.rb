class Matrix
  def initialize(string)
    string.split("\n").map do |rows| nums.split(" ")
    rows.map { |nums| nums.to_i }
    end
  end

  def rows
    @args[pos].map { |x| x.to_i }
  end

  def columns
    @args.map { |x| x[pos].to_i }
  end
end
