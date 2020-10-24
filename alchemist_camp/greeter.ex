# Alchemist Camp Challenge:
# make a program that greets a user by name, if they enter your name, it should say something special.

defmodule Greeter do
  # module attribute
  @author "Eina"

  def start do
    # assign to answer, then trim and reassign that to answer
    answer = IO.gets("Hi there! What's your name? \n") |> String.trim()    

    if (String.downcase(answer)) == String.downcase(@author) do    
      "No, your name isn't #{@author}! I'm the only allowed to have that name!"
    else 
      "Nice to meet you, #{answer}!"
    end  
  end
end