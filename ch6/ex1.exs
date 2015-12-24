defmodule Times do 
  def double(n) do
    n*2
  end

  def triple(n) do
    n * 3
  end

  def quadruple(n) do
    double(double(n))
  end
end


# c "ch6/ex1.exs"
# or
# elixir ch6/ex1.exs
