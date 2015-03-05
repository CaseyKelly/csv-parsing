require 'CSV'

class Target

  def initialize
    @lines = CSV.read('assets/Target.csv')
  end

  def first_line
    @lines[0]
  end

  def sums
    @lines.map { |line| line[-1].to_i}.reduce(:+)
  end

  def categories
    @lines.map { |line| line[0]}.uniq
  end
end
