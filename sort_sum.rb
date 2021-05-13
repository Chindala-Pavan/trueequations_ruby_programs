#time complexity is 1<log(n)<n<nlog(n)<n**c<c**n<n!
arr=[1,2,2,3,4,5,8,9,12]
p "enter the number"
n = gets.chomp.to_i
len=arr.size
l=len/2
x=l
y=l+1
p "x=#{x} y=#{y}"
i=0
j=len-1
while i<=x && j>=y
    if arr[l]+arr[l+1] <=n
        x=l
        y=l+1
        l=l+1
        p "x=#{x} y=#{y}"

    else
       if arr[i]+arr[j]==n 
            p "#{arr[i]} #{arr[j]}"
            i=i+1
            j=j-1
        elsif arr[i]+arr[j]<n
            i=i+1
        elsif arr[i]+arr[j]>n
            j=j-1
        end
    end
end

#=end
=begin
while i<=x && j>=y
    if arr[i]+arr[j]==n then (p "#{arr[i]} #{arr[j]}";i=i+1;j=j-1) 
end
=end
