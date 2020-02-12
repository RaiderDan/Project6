###############################################
# Dan Collins
# Project 6
# Project_6_Collins.rb
# #############################################
# Part 1
# 1. ask user their age and determine ticket price based on input
# 2. output age and ticket price
# 3. Ask user if they want to know the ticket price for another buyer
#     -only accept y for yes, n for no. if y, prompt for another age. if n, exit the loop
# 4. Output for each iteration
# Part 2
# 5. Use a for loop to calculate and display the accumulated revenue assuming 5 of each type of ticket is sold per show
# #############################################
#Constants
CHILD_TICKET_PRICE = 5
REGULAR_TICKET_PRICE = 10
SENIOR_TICKET_PRICE = 8

#Ask user for age
puts "What is your age?"
cust_age = gets.to_i

#Determine ticket price from age
if cust_age > 0 and cust_age <= 12
  ticket_price = CHILD_TICKET_PRICE
elsif cust_age > 12 and cust_age < 65
  ticket_price = REGULAR_TICKET_PRICE
elsif cust_age >= 65
  ticket_price = SENIOR_TICKET_PRICE
end

#Output age and ticket price
puts "Age: " + cust_age.to_s + " " + "Ticket Price: $" + ticket_price.to_s

#Ask user if they want to know the ticket price for another buyer
puts "Would you like to know the ticket price for another buyer? (y/n)"
another_ticket = gets.chomp

#only accept y or n as inputs
until another_ticket == "y" or another_ticket == "n"
  puts "Please answer 'y' for yes or 'n' for no only"
  puts "Would you like to know the ticket price for another buyer? (y/n)"
  another_ticket = gets.chomp
end

while another_ticket == "y"
  puts "Enter age:"
  cust_age = gets.to_i
  if cust_age > 0 and cust_age <= 12
    ticket_price = CHILD_TICKET_PRICE
  elsif cust_age > 12 and cust_age < 65
    ticket_price = REGULAR_TICKET_PRICE
  elsif cust_age >= 65
    ticket_price = SENIOR_TICKET_PRICE
  end
  puts "Age: " + cust_age.to_s + " " + "Ticket Price: $" + ticket_price.to_s
  puts "Would you like to know the ticket price for another buyer? (y/n)"
  another_ticket = gets.chomp
  until another_ticket == "y" or another_ticket == "n"
    puts "Please answer 'y' for yes or 'n' for no only"
    puts "Would you like to know the ticket price for another buyer? (y/n)"
    another_ticket = gets.chomp
  end
end

#Use a for loop to calculate and display the accumulated revenue assuming 5 of each type of ticket is sold per show
for shows in(1..10)
  accumulated_revenue = shows * ((CHILD_TICKET_PRICE * 5) + (REGULAR_TICKET_PRICE * 5) + (SENIOR_TICKET_PRICE * 5))
  puts "Show " + shows.to_s + " Accumulated Revenue: $" + accumulated_revenue.to_s
end

