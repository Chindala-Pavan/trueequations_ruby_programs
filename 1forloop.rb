=begin 
for loop syntax
    for variable_name[, variable...] in expression [do]
        code to be executed 
    end

=end

for a in 1..5 do
    puts "#{a}"
end
for a in 1..5 
    print "#{a}"
end
for a in 1..5
    p "#{a}"
end

arr =["pavan",false,123,nil,12.3 ,nil,"12.3"]
for a in arr
    puts a
end
for a in arr
    p a
end
=begin

output
1
2
3
4
5
12345"1"
"2"
"3"
"4"
"5"
pavan
false
123

12.3

12.3
"pavan"
false
123
nil
12.3
nil
"12.3"
=end