puts "Enter the number"
n1=gets.to_i
puts "Enter the another number"
n2=gets.to_i
puts "Addition=#{n1+n2}","Subtraction=#{n1-n2}",
     "Multiplication=#{n1*n2}","Division=#{n1/n2}",
     "Remainder=#{n1%n2}"

loop do
 puts "Enter the number"
 n1=gets.to_i
 puts "Enter the operator"
 op=gets.chomp
 puts "Enter the another number"
 n2=gets.to_i
 
 if op=="+"
 ans=n1+n2
 puts "The addition is #{ans}"
 elsif op=="-"
 ans=n1-n2
 puts "The subtraction is #{ans}"
 elsif op=="*"
 ans=n1*n2
 puts "The multiplication is #{ans}"
 elsif op=="/"
 ans=n1/n2
 puts "The division is #{ans}"
 elsif op=="%"
 ans=n1%n2
 puts "The remainder is #{ans}"
 else puts "Invalid operator"
 end

 File.open("step3.txt","a") do |line|
 line.puts "\r" + n1.to_s
 line.puts "\r" + n2.to_s
 line.puts "\r" + op.to_s
 line.puts "\r" + ans.to_s
 end

 puts "Do you want to do that again,Y/N?"
 response=gets.chomp
 break if response =='N'
end


 
 

