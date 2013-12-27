# Example of a function returning another function
prefix = fn (string) ->
  fn (other_string) ->
    "#{string} #{other_string}"
  end
end

mrs = prefix.("Mrs")

"Mrs Smith" = mrs.("Smith")

"Elixir Rocks" = prefix.("Elixir").("Rocks")
