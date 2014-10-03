def ask
    print "Do you want to play a guessing game?(Y/N)"
    @decision = gets.chomp
end

def guess
	print "Is your number #{@i}? [Bigger(type b), Smaller(type s), Yes(type y)]"
end

print "Hello, what's your name?"
name = gets.chomp
puts "Hello #{name}! Nice to meet you!"
ask

if @decision.upcase == "Y"
    print "Great! Now think a number between 1-20. Ready? (press ENTER)"
    gets.chomp
    @i = rand(1..20)
    guess
    @type = gets.chomp
    while @type.downcase != "y"
    	if @type.downcase == "b"
    		@a ||= 20
    		@b = @i+1
    		@i = rand(@b..@a)
    		guess
    	elsif @type.downcase == "s"
    		@a = @i-1
    		@b ||= 1
    		@i = rand(@b..@a)
            guess
        else 
        	puts "Please type b,s,y !!!"
        	guess
        end
        @type = gets.chomp
    end
    puts "Yeah! I'm right! Do you want to play again?[ok,no]"
    @again = gets.chomp
    if @again.downcase == "ok"
        
    elsif @again.downcase == "no"
    	puts "Alright, see you later!"
    else 
    	puts "Please type ok or no !!!"
        puts "Do you want to play again?[ok,no]"
        @again = gets.chomp
    end
elsif @decision.upcase = "N"
    puts "Alright, see you later!"
else 	
    puts "Please type Y or N !!!"
    ask
end