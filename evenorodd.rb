
#t=:y
#while(t==:y || t==:yes || t==:YES || t==:Y) do
loop do
    print "enter the number to check even or odd?"
    n=gets.chomp.to_i
    if n%2==0
        print "#{n} even number"
    else
        print "#{n} odd number"
    end
    print "do you want to continue(y/n)?"
    t=gets.chomp.to_sym
    break if t==:N || t==:n || t==:no || t==:NO
end
