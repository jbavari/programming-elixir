# I’m thinking of a number between 1 and 1000....
# The most efficient way to find the number is to guess halfway between the low and high numbers of the range. 
# If our guess is too big, then the answer lies between the bottom of the range and one less than our guess. 
# If our guess is too small, then the answer lies between one more than our guess and the end of the range.
# Your API will be guess(actual, range), where range is an Elixir range.
# Your output should look similar to this:
#     iex> Chop.guess(273, 1..1000)
#     Is it 500
#     Is it 250
#     Is it 375
#     Is it 312
#     Is it 281
#     Is it 265
#     Is it 273
#     273

defmodule Chop do
  def guess_number(actual, bottom..top) do
    guess = div(bottom + top, 2)
    IO.puts "Is it #{guess}"
    _guess(actual, guess, bottom..top)
  end

  defp _guess(actual, actual, _), do: IO.puts "#{actual}"

  # If our guess is too big, then the answer lies between the bottom of the range and one less than our guess. 
  defp _guess(actual, guess, bottom.._top)
    when (guess > actual) do
      guess_number(actual, bottom..guess-1)
  end

  # If our guess is too small, then the answer lies between one more than our guess and the end of the range.
  defp _guess(actual, guess, _bottom..top)
    when (guess < actual) do
      guess_number(actual, guess+1..top)
  end
end


IO.puts "Guessing 500, 1..1000"
Chop.guess_number(500, 1..1000)

IO.puts "Guessing 250, 1..1000"
Chop.guess_number(250, 1..1000)

IO.puts "Guessing 273, 1..1000"
Chop.guess_number(273, 1..1000)

IO.puts "Guessing 999, 1..1000"
Chop.guess_number(999, 1..1000)

IO.puts "Guessing 9999, 1..10000"
Chop.guess_number(9999, 1..10000)
