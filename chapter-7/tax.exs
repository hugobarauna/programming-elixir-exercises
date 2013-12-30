defmodule Tax do
  @tax_rates [ NC: 0.075, TX: 0.08 ]

  def orders_with_total(orders) do
    Enum.map(orders, &order_with_total/1)
  end

  def order_with_total(order = [_, { :ship_to, :NC }, _]) do
    total_amount = order[:net_amount] + order[:net_amount] * @tax_rates[:NC]
    order ++ [total_amount: total_amount]
  end

  def order_with_total(order = [_, { :ship_to, :TX }, _]) do
    total_amount = order[:net_amount] + order[:net_amount] * @tax_rates[:TX]
    order ++ [total_amount: total_amount]
  end

  def order_with_total(order) do
    order ++ [total_amount: order[:net_amount]]
  end
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

IO.inspect Tax.orders_with_total(orders)
