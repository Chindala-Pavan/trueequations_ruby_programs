h= {"commodity"=>{"edit"=>"0", "create"=>"0", "update"=>"0", "delete"=>"0"},
        "trade"=>{"edit"=>"1", "create"=>"1", "update"=>"0", "delete"=>"1"},
        "payment"=>{"verify"=>"1"}}
=begin

display {"trade"=>{"edit"=>"1", "create"=>"1", "delete"=>"1"}, "payment"=>{"verify"=>"1"}}
note:without using delete method:non destructive methods
=end
nh = {}
h.each {|key,value| h[key]=value.select {|k,v|  v=="1"}; nh[key]=h[key] if h[key].size!=0}

p nh
