# stopped never ending love loop by if/else 
def behavior 
    puts "Please complete the sentence with: good OR bad.  You have been ..."
    you_are = gets.chomp.downcase
end
    
you_are = behavior

while you_are == "good"
    puts "I love you"
    you_are = behavior
end
    
if you_are == "bad"
    puts "I still love you."
else
    puts "Yes, I still love you, but we need to talk...there seems to be an error somewhere."
end