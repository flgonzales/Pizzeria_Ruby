def pizzas
   today = [
       {type: "Muzzarela", price: 2},
       {type: "Vegan", price:3},
       {type: "Haway", price: 5},
       {type:"Tuna", price: 7}
     ]
end

def pizzas_print
  today = pizzas
  puts "Bellow are Today's Specials ask for the number"
   puts "1: #{today[0][:type]} #{today[0][:price]}€"
   puts "2: #{today[1][:type]} #{today[1][:price]}€"
   puts "3: #{today[2][:type]} #{today[2][:price]}€"
   puts "4: #{today[3][:type]} #{today[3][:price]}€"
end

def customer
  puts "Hi! What's your name?"
  customer_nm = gets.chomp.capitalize
end

def pizza_order_tp
  puts "Tell us the Special you want"
  pizza_tp = gets.chomp
  #Integer(pizza_tp)
end

def pizza_order_qty
  puts "How many pizzas do you want?"
  pizza_qty = gets.chomp.to_i
end

def delivery_cost
  if pizza_order_cost < 10
    pizza_order_cost += 2.5
  end
end

def bulk_discount
  if pizza_order_cost > 20
    pizza_order_cost *= 0.8
  end
end

# *** Program FLOW  ***
puts "Welcome to Pizza Pizzas!"
customer_name = customer
#puts "\n Hi #{customer_name}! \n"

pizzas_print
pizza_order_type = pizza_order_tp
#puts "You ordered #{pizza_order_type}"
pizza_order_quantity = pizza_order_qty

today = pizzas
pizza_order_cost = (today[pizza_order_type.to_i-1][:price])*pizza_order_quantity.to_i

if pizza_order_cost < 10
  pizza_order_cost += 2.5
  pizza_delivery_message = "It was added 2.50€ to deliver your order"
else
  if pizza_order_cost > 20
    (pizza_order_cost *= 0.8).round(2)
    pizza_delivery_message_bulk = "You received 20% discount for ordering in bulk."
  end
end

puts "\n Thank you #{customer_name}! \n Here is your order: #{pizza_order_quantity.to_i} #{today[pizza_order_type.to_i-1][:type]} and costs #{sprintf("%#.2f", pizza_order_cost)}€. \n#{pizza_delivery_message}#{pizza_delivery_message_bulk}"

#{(today[pizza_order_type.to_i-1][:price])*pizza_order_quantity.to_i}
#pizza_specials = pizzas
#   puts "Choose ONE"
#   pizza_ordered = gets.chomp.capitalize
#   puts "You selected #{today[(today.rindex(pizza_ordered)).to_i][:type]} and costs #{today[(today.rindex(pizza_ordered))][:price]} Euro."
