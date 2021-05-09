print "enter the number to find prime factors "
t= gets.chomp.to_i
if t<0
    t=t.abs
end
n=t
#t=n.to_s.to_i
i=2
arr=Array.new(1,1)
while(t!=1) do
    if t%i==0
        arr<<i
        t=t/i
    else
        i=i+1
    end
end
print "prime factors of #{n} is #{arr.join(sep="*")}"
