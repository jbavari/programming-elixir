# Use the &... notation to rewrite the following.
# – Enum.map [1,2,3,4], fn x -> x + 2 end
# – Enum.each [1,2,3,4], fn x -> IO.inspect x end

Enum.map [1, 2, 3, 4], &1 + 2
Enum.each [1, 2, 3, 4], IO.puts(&1)
