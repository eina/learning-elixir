# Alchemist Camp Challenge:
# make a program that greets a user by name, if they enter your name, it should say something special.

defmodule Greeter do
  answer = IO.gets("Hi there! What's your name? \n")
  trimmed = String.trim(answer)
  normalized = String.downcase(trimmed)

  case(normalized) do
    "eina" -> IO.puts("No, you're name isn't #{trimmed}! I'm the only allowed to have that name!")
    _ -> IO.puts("Nice to meet you, #{trimmed}!")
  end  
end