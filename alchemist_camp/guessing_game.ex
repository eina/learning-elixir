defmodule GuessingGame do
  # guess between a low and a high number -> guess middle number
  # tell user our guess
  # -> "yes" -> game over
  # -> "bigger" -> bigger(low, high)
  # -> "smaller" -> smaller(low, high)  

  def guess(low, high) do
    answer = IO.gets("Hmm... maybe you're thinking of #{mid(low, high)}? \n")
    
    case String.trim(answer) do
      "bigger" -> bigger(low, high)
      "smaller" -> smaller(low, high)
      "yes" -> "I knew I could guess your number!"
      # wildcard that'll match anything
      _ -> 
        IO.puts(~s(Type "bigger", "smaller" or "yes"))
        # rerun the guessing function
        guess(low, high)
    end
  end

  def mid(low, high) do 
    div(low + high, 2)
  end

  def bigger(low, high) do
    # lowest end of the next guess, make sure it's not higher than the range    
    new_low = min(high, mid(low, high) + 1)
    guess(new_low, high)
  end

  def smaller(low, high) do    
    new_high = max(low, mid(low, high) - 1)
    guess(low, new_high)
  end

end