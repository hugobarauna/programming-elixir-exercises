fizz_buzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, n -> n
end

"FizzBuzz" = fizz_buzz.(0, 0, 1)
"Fizz" = fizz_buzz.(0, 1, 1)
"Buzz" = fizz_buzz.(1, 0, 1)
2 = fizz_buzz.(1, 1, 2)
