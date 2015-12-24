defmodule ListFunctions do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)
end


IO.puts "Sum of list: #{ListFunctions.sum([1, 2, 3])}"
