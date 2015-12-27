# Exercise: ListsAndRecursion-8
# The Pragmatic Bookshelf has offices in Texas (TX) and North Carolina (NC), 
# so we have to charge sales tax on orders shipped to these states. 
# The rates can be expressed as a keyword list:2
#     tax_rates = [ NC: 0.075, TX: 0.08 ]
# Here’s a list of orders:
#     orders = [
#         [ id: 123, ship_to: :NC, net_amount: 100.00 ],
#         [ id: 124, ship_to: :OK, net_amount:  35.50 ],
#         [ id: 125, ship_to: :TX, net_amount:  24.00 ],
#         [ id: 126, ship_to: :TX, net_amount:  44.80 ],
#         [ id: 127, ship_to: :NC, net_amount:  25.00 ],
#         [ id: 128, ship_to: :MA, net_amount:  10.00 ],
#         [ id: 129, ship_to: :CA, net_amount: 102.00 ],
#         [ id: 120, ship_to: :NC, net_amount:  50.00 ] ]
# Write a function that takes both lists and returns a copy of the orders, 
# but with an extra field, total_amount, which is the net plus sales tax. 
# If a shipment is not to NC or TX, there’s no tax applied.

defmodule TaxCalculator do
  def total_amount(orders, tax_rates) do
    orders |> Enum.map(&calc_total_amount(&1, tax_rates))
  end

  defp calc_total_amount(order = [id: _, ship_to: state, net_amount: net_amount], tax_rates) do
    tax_rate = Keyword.get(tax_rates, state, 0)
    tax = tax_rate * net_amount + net_amount
    Keyword.put(order, :total_amount, tax)
  end

  # Original solution
  # def total_amount(orders, tax_rates) do
  #   tax_orders = []
  #   for record <- orders do
  #     # IO.puts "Record #{record[:id]}"
  #     tax_rate = get_tax_rate(record[:ship_to], tax_rates)
  #     IO.puts "Computed tax rate for #{record[:ship_to]} : #{tax_rate}"
  #     tax_orders = tax_orders ++ Keyword.put(record, :total_amount, (tax_rate * record[:net_amount]) + record[:net_amount])
  #     IO.puts "Record net amount: #{record[:net_amount]}, total_amount: #{record[:total_amount]}"
  #     # IO.puts "New record: #{new_record[:id]}"
  #     # tax_orders = tax_orders ++ new_record
  #   end

  #   IO.inspect tax_orders

  #   # for tax_rate <- tax_rates, do: IO.puts "Rate:  #{tax_rate}"
  # end

  # defp get_tax_rate(state, tax_rates) do
  #   case Keyword.fetch(tax_rates, state) do
  #     :error -> 
  #       0 
  #     {_result, tax_rate} ->
  #       # IO.puts "Has #{state} tax rate: #{tax_rate}"
  #       tax_rate
  #   end
  # end
end

orders = [
        [ id: 123, ship_to: :NC, net_amount: 100.00 ],
        [ id: 124, ship_to: :OK, net_amount:  35.50 ],
        [ id: 125, ship_to: :TX, net_amount:  24.00 ],
        [ id: 126, ship_to: :TX, net_amount:  44.80 ],
        [ id: 127, ship_to: :NC, net_amount:  25.00 ],
        [ id: 128, ship_to: :MA, net_amount:  10.00 ],
        [ id: 129, ship_to: :CA, net_amount: 102.00 ],
        [ id: 120, ship_to: :NC, net_amount:  50.00 ] ]

tax_rates = [ NC: 0.075, TX: 0.08 ]

amounts = TaxCalculator.total_amount(orders, tax_rates)
IO.inspect amounts
