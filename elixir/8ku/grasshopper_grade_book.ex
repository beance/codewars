defmodule GetGrade do
  def get_grade(a, b, c) do
    case (a + b + c) / 3 do
      score when 90 <= score and score <= 100 -> "A"
      score when 80 <= score and score < 90 -> "B"
      score when 70 <= score and score < 80 -> "C"
      score when 60 <= score and score < 70 -> "D"
      _ -> "F"
    end
  end
end
