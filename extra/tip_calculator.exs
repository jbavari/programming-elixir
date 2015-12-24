defmodule TipCalculator do
  def calculate(amount, tipPercentage) do
    tip = Float.round((tipPercentage / 100) * amount, 2)
    %{subtotal: tip + amount, tip: tip}
  end
end

receipt1 = TipCalculator.calculate(15.50, 15)

IO.puts "Your tip: #{receipt1.tip} - subtotal: #{receipt1.subtotal}"
