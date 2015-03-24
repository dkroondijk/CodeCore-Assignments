class Results

  attr_accessor :q1, :q2, :q3

  def initialize(q1, q2, q3)
    @q1, @q2, @q3 = q1, q2, q3
  end

  def result
    if (q1 == "1" || q1 == "2") && q2 =="1" && q3 == "1"
      "Rational"
    elsif q1 == "1" && (q2 =="1" || q2 == "2") && q3 == "2"
      "Guardian"
    elsif q1 == "2" && (q2 =="1" || q2 == "2") && q3 == "2"
      "Artisan"
    else
      "Idealist"
    end
  end

end