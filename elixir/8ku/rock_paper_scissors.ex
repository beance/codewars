defmodule RockPaperScissors do
  def rps(p1, p2) when p1 == p2, do: "Draw!"

  def rps(p1, p2) do
    case p1 do
      "rock" ->
        case p2 do
          "scissors" -> "Player 1 won!"
          "paper" -> "Player 2 won!"
        end

      "scissors" ->
        case p2 do
          "rock" -> "Player 1 won!"
          "paper" -> "Player 2 won!"
        end

      "paper" ->
        case p2 do
          "scissors" -> "Player 2 won!"
          "rock" -> "Player 1 won!"
        end
    end
  end
end
