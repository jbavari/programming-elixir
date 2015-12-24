# An Elixir single-quoted string is actually a list of individual character codes. 
# Write a caesar(list, n) function that adds n to each list element, 
# wrapping if the addition results in a character greater than z.
# iex> MyList.caesar('ryvkve', 13) ?????? :)
defmodule MyList do
  def caesar([], _), do: ''

  def caesar(str, number_to_add) do
    [head | tail] = str
    [head + number_to_add, caesar(tail, number_to_add)]
  end
end


IO.puts "#{'ryvkve'}"
new_char_str = MyList.caesar('ryvkve', 13)
IO.puts "#{new_char_str}"

IO.puts "Another try: #{MyList.caesar('Josh Bavari', 13)}"
