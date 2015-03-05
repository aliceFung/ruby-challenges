class Plan
    
    def set_plan= (plan_name)
        @plan = plan_name
    end
    
    def get_plan
        return @plan
    end

end

class Budget < Plan
    
    def spending_limit (income, expenses)
        if income < expenses
            return "Total expenses must be less than $#{income}. Cut out some expenses now or delay spending to save more first."
        else
            return "You're on budget! Congrats! You have $#{income-expenses} left."
        end
    end
end
    
class Packing_list < Plan
    
    def luggage (items)
        my_luggage = Array.new
        my_luggage.concat(items)
        return my_luggage
    end
end

vacation= Packing_list.new
vacation.set_plan= "Bermuda"
destination = vacation.get_plan
checked_baggage = vacation.luggage ['clothes', 'sunblock']
carry_on = vacation.luggage ['laptop', 'id', 'tickets']

vacation_money = Budget.new
vacation_money.set_plan= "Bermuda budget"
acct_name = vacation_money.get_plan
savings = 1000
cost = 300 + 500 + 30

puts "Your trip to #{destination} costs $#{cost}.  Your #{acct_name} has $#{savings}."
puts vacation_money.spending_limit(savings.to_i, cost.to_i) + " Remember to pack #{carry_on.join(", ")} for #{destination}!"


    
        
        