handle_open = fn
  {:ok, file} -> "First line: #{IO.read(file, :line)}"
  {_, error}  -> "Error: #{:file.format_error(error)}"
6 = sum.(1, 2, 3)
end

IO.puts handle_open.(File.open("anonymous_functions.exs"))

IO.puts handle_open.(File.open("nonexistent"))
