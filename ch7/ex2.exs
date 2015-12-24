# Write a max(list) that returns the element with the maximum value in the list. 
# (This is slightly trickier than it sounds.)
defmodule MyList do
  def mapsum([], _func), do: 0
  def mapsum([head | tail], func) do
    mapsum(tail, func) + func.(head)
  end

  def max(list) when length(list) == 0, do: 0

  def max(list) do 
    [head | _tail] = list
    _max(list, head)
  end

  def _max([], current_max), do: current_max

  def _max([head | tail], current_max) do
    new_max = if head > current_max, do: head, else: current_max
    _max(tail, new_max)
  end
end

# MyList.max([1, 100, 15000, 9999999999999]) => 9999999999999
# Look at first element - if greater than current max - set that to max
# compare next element of array with current max
# continue until list is empty
IO.puts "Max of empty list: #{MyList.max([])}"
IO.puts "Max of 2 elements: #{MyList.max([1, 2])}"
IO.puts "Max of 2 elements: #{MyList.max([5, 1, 2, 50000, 100000000])}"
IO.puts "Max of 2 elements: #{MyList.max([-55, -1, 0])}"
IO.puts "Max of 2 elements: #{MyList.max([-55, -1])}"
