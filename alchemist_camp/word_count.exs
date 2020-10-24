# this is a script, no need for a module, it'll be compiled line by line

# |> is the pipeline syntax, takes whatever is to the left, 
# and passes it to the function as the first parameter
filename = IO.gets("File to count the words from: ") |> String.trim()

# read! will crash if it can't open filename
# ~r is a sigil for regex, only split on non-word characters
# fn inside filter is an anoymous function
# pipeline operator can be split by lines
words = 
  File.read!(filename) 
  |>String.split(~r{(\\n|[^\w'])+}) 
  |> Enum.filter(fn x -> x != "" end)

# count words and show on terminal
words |> Enum.count() |> IO.puts()
