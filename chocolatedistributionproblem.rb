puts "enter the size of array"
n=gets.chomp.to_i
#n=8
puts "enter the no of students"
m=gets.chomp.to_i
#m=5
puts "enter the array "
arr1=[]
#arr1=[3,4,1,9,56,7,9,12]
i=1
loop do
    print "enter a positive number #{i} :"

    a=gets.chomp.to_i
    if a>0
        arr1<<a
        break if i==n
        i=i+1
    end
end
print arr1.compact!

arr2=arr1.sort
#print arr2

min=100000000
a=0
n=n-m+1
#print n
for i in (0...n)

    t_min=arr2[i+m-1]-arr2[i]
    ##print t_min
    if t_min<=min
        min=t_min
        a=i
    end
end
puts "the minimum difference is #{min}"
#min_arr=Array.new(m)
min_arr=[]
for i in (a..a+m-1)
    min_arr<<arr2[i]
end

#print min_arr
min_arr2=[]
for a in arr1
    if min_arr.include?(a)
        min_arr2<<a
    end
end
print "the distribution array is"
p min_arr2
