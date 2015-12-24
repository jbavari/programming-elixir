# Write a mapsum function that takes a list and a function. 
# It applies the function to each element of the list and then sums the result, 
# so
# iex> MyList.mapsum [1, 2, 3], &(&1 * &1) 
# 14
defmodule MyList do
  def mapsum([], _func), do: 0
  def mapsum([head | tail], func) do
    mapsum(tail, func) + func.(head)
  end
end

double_list = MyList.mapsum [1, 2, 3], &(&1 * &1) 
IO.puts "Mapsum: #{double_list}"
