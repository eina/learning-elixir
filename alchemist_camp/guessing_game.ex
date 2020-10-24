# Guessing Game:
# guess between a low and a high number

defmodule GuessingGame do  
  # can make many functiond definitions with the same name
  # guard in case user puts in (high, low) 
  def guess(a, b) when a > b,  do: guess(b, a)  

  def guess(low, high) do
    answer = IO.gets("Hmm... maybe you're thinking of #{mid(low, high)}? \n")
    
    case String.trim(answer) do
      "bigger" -> bigger(low, high)
      "smaller" -> smaller(low, high)
      "yes" -> "I knew I could guess your number!"
      # wildcard that'll match anything, "default" for javascript
      _ -> 
        # ~s is a string sigil to make typing strings with quotes easier?
        IO.puts(~s(Type "bigger", "smaller" or "yes"))
        # rerun the guessing function
        guess(low, high)
    end
  end
  
  def mid(low, high) do 
    div(low + high, 2)
  end

  def bigger(low, high) do
    # find the middle number between low and high and add 1 to make a new low starting point
    # ensure it's not going to be higher than the high number with min
    new_low = min(high, mid(low, high) + 1)
    guess(new_low, high)
  end

  def smaller(low, high) do    
    new_high = max(low, mid(low, high) - 1)
    guess(low, new_high)
  end

end