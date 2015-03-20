class Car

  attr_reader :year

  def initialize(year)
    @year = year.to_i
  end

  def age
    case
    when year > 2015
      "future"
    when year == 2015
      "new"
    when year > 2010
      "old"
    else
      "very old"
    end
  end

end