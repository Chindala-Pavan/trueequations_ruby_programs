#time complexity is 1<log(n)<n<nlog(n)<n**c<c**n<n!

=begin

take sorted array as input then write a function 
that will return a pair of numbers from the array 
whose sum is equal to the particular number entered
by user
Example :[1,2,2,3,4,5,8,9,12] is sorted array as input
And user entered a number 13
then your output should be::
1  12
4  9
5  8
Note: here the condition is that your time complexity should less than O(n) for the logic
=end




arr=[1,2,2,3,4,5,8,9,12]
p "enter the number"
n = gets.chomp.to_i
len=arr.size




def pair_sum(arr,len,n)
    i=0
    j=len-1
    l=len/2
    x=l
    y=l+1
    while i<=x && j>=y
        if arr[l]+arr[l+1] <=n
            x=l
            y=l+1
            l=l+1
            #p "x=#{x} y=#{y}"
    
        else
           if arr[i]+arr[j]==n 
                puts "#{arr[i]} #{arr[j]}"
                i=i+1
                j=j-1
            elsif arr[i]+arr[j]<n
                i=i+1
            elsif arr[i]+arr[j]>n
                j=j-1
            end
        end
    end
end
pair_sum(arr,len,n)
