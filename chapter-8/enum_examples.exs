import Enum

deck = lc rank inlist '23456789TJQKA', suit inlist 'CDHS', do: [suit,rank]
hands = deck |> shuffle |> chunk(13)
