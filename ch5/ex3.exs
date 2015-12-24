# Write a function that takes three arguments. 
# If the first two are zero, return “FizzBuzz.” 
# If the first is zero, return “Fizz.” 
# If the second is zero, return “Buzz.” 
# Otherwise return the third argument. 
# Do not use any lan- guage features that we haven’t yet covered in this book.
fizzbuzz = fn 
  0, 0, _ -> "FizzBuzz."
  0, _, _ -> "Fizz."
  _, 0, _ -> "Buzz."
  _, _, c -> c
end

buzzer = fn n ->
  fizzbuzz.(rem(n, 3), rem(n, 5), n)
end

IO.puts fizzbuzz.(0, 0, 1)
IO.puts fizzbuzz.(1, 0, 1)
IO.puts fizzbuzz.(1, 1, 1)



IO.inspect [ buzzer.(10), buzzer.(11), buzzer.(12), buzzer.(13), buzzer.(14), buzzer.(15), buzzer.(16) ]
