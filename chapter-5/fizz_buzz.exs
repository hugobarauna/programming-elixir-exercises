# A solution to the FizzBuzz problem withtout conditionals!!!

fizz_word = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, n -> n
end

"FizzBuzz" = fizz_word.(0, 0, 1)
"Fizz" = fizz_word.(0, 1, 1)
"Buzz" = fizz_word.(1, 0, 1)
2 = fizz_word.(1, 1, 2)

fizz_buzz = fn
  n -> fizz_word.(rem(n, 3), rem(n, 5), n)
end

"Buzz" = fizz_buzz.(10)
11 = fizz_buzz.(11)
"Fizz" = fizz_buzz.(12)
13 = fizz_buzz.(13)
14 = fizz_buzz.(14)
"FizzBuzz" = fizz_buzz.(15)
16 = fizz_buzz.(16)
