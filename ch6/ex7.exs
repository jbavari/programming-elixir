# Find the library functions to do the following, and then use each in iex. 
# (If the word Elixir or Erlang appears at the end of the challenge, then you’ll find the answer in that set of libraries.)
# – Convert a float to a string with two decimal digits. (Erlang)
# – Get the value of an operating-system environment variable. (Elixir)
# – Return the extension component of a file name (so return .exs if given
# "dave/test.exs"). (Elixir)
# – Return the process’s current working directory. (Elixir)
# – Convert a string containing JSON into Elixir data structures. (Just
# find; don’t install.)
# – Execute a command in your operating system’s shell.
defmodule ErlangConversions do
  # – Convert a float to a string with two decimal digits. (Erlang)
  def convert_float(number) do
    :io.format("~.2f~n", [number])
  end

  # – Get the value of an operating-system environment variable. (Elixir)
  def get_env_var(var_name), 
    do: System.get_env(var_name)

  # – Return the extension component of a file name (so return .exs if given
  # "dave/test.exs"). (Elixir)
  def get_file_ext(file_with_path), 
    do: Path.extname(file_with_path)

  # – Return the process’s current working directory. (Elixir)
  def get_cwd, 
    do: System.cwd()

  # – Execute a command in your operating system’s shell.
  def exec_cmd(cmd, args) when is_list(args) do
    System.cmd(cmd, args)
  end
    # do: System.cmd("ls", ["/Users/JoshBavari/Development/programming-elixir/ch6/ex7.exs"], )
  def exec_cmd(cmd, args) when is_binary(args) do
    System.cmd(cmd, [args])
  end
end

val = ErlangConversions.convert_float(12.15151515)
IO.puts  "Converted to two decimal digits: #{val}"

shell_env_var = ErlangConversions.get_env_var("SHELL")
IO.puts "Env variable 'SHELL': #{shell_env_var}"

ext_path = "/Users/JoshBavari/Development/programming-elixir/ch6/ex7.exs"
ext = ErlangConversions.get_file_ext(ext_path)
IO.puts "Got extension: #{ext}"

IO.puts "CWD: #{ErlangConversions.get_cwd()}"

ErlangConversions.exec_cmd("ls", "./")
ErlangConversions.exec_cmd("ls", ["./"])
