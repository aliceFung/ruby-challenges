puts "Give me a number:"
number = gets.to_i

def always_three(number)
puts "Always #{((((number + 5)*2)-4)/2) - number}"
end


always_three(number).to_s

#potential bugs: ANY input is valid, including "f(x)" , "tree", "what is happening?", "*@$&$", "weird"