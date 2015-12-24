list_concat = fn first_list, second_list -> first_list ++ second_list end
sum = fn a, b, c -> a + b + c end
pair_tuple_to_list = fn {a, b} -> [a, b] end

IO.inspect list_concat.([1,2,3], [4,5,6]) #=> [1,2,3,4,5,6]
IO.puts sum.(1, 2, 3) #=> 6
IO.inspect pair_tuple_to_list.( { 8, 7 } ) #=> [ 8, 7 ]
