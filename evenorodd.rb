

loop do
    print "enter the number to check even or odd?"
    n=gets.chomp.to_i
    if n%2==0
        print "#{n} even number"
    
    print "do you want to continue(y/n)?"
    t=gets.chomp.to_sym
    break if t==:N || t==:n || t==:no || t==:NO
    else
        print "#{n} odd number"
        break
    end
end
