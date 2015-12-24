# Write a function MyList.span(from, to) that returns a list of the numbers from `from` up to `to`.
defmodule MyList do
  # My solution
  # def span(from, to) do
  #   IO.puts "Counting from #{from} to #{to}"
  #   _span(from+1, to, [from])
  # end

  # defp _span(from, to, list) when from == to do
  #   list ++ [to]
  # end

  # defp _span(from, to, list) do
  #   _span(from+1, to, list ++ [from])
  # end

  # suggested from book
  def span(from, to) when from > to, do: []

  def span(from, to) do
    [ from | span(from+1, to) ]
  end
end

list = MyList.span(0, 10)
IO.inspect list

IO.inspect MyList.span(1, 50)
