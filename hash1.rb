h= {"commodity"=>{"edit"=>"0", "create"=>"0", "update"=>"0", "delete"=>"0"},
        "trade"=>{"edit"=>"1", "create"=>"1", "update"=>"0", "delete"=>"1"},
        "payment"=>{"verify"=>"1"}}
=begin
for k in h.keys
    for k1 in k.keys
        if v1=="0"
            k.delete(k1)
        end
    end
end
#=end

h.each do |k,v|
    puts "#{k} #{v}"
    k.each do |k1,v1|
        puts "#{k1} #{v1}"
    end 
end
#=end
h.each_with_object({}) do |k,v|
    k.each do |k1,v1|
        p "#{k1} #{v1}"
        if (v1=="0")
            
            k.delete(k1)
        end
    end
end 
p h

#k=h.keys
h.select {|key,value| value.select {|k,v|  p v}}
h.each do |key,value|
    value.each do |k,v|
        if value[k]=="0"
            value.delete(k)
        end
    end
    if value.length==0
        h.delete(key)
    end
end

h.select {|key,value| value.select {|k,v|  v=="1"}}
p h
h.each {|key,value| value.each {|k,v| value.delete(k) if value[k]=="0"}; h.delete(key) if value.size==0}
p v
=end
#value=h["trade"]
#h.each do |key,value|
#    h[key] = value.select {|k,v|  v=="1"}
#end
#nh = h.select {|key,value| h[key].size!=0}
#p nh
#nh = h.select |key,value|
#h.each {|key,value| h[key] = value.select {|k,v| v=="1"};}
#h.select {|key,value| h[key]=value.select {|k,v|  v=="1"}}
#nh = {}
#h.each {|key,value| h[key]=value.select {|k,v|  v=="1"}; nh[key]=h[key] if h[key].size!=0}
h.select {|key,value| h[key]=value.select {|k,v|  v=="1"};h[key] if h[key].size!=0}
p h