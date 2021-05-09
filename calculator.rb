loop do
    p "Arithmetic Calculator"
    print "1.Addtion 2.Subtraction 3.Multiplication 4.Divide 5.Modulo_Division 6.power_calculator 7.Exit"
    choice=gets.to_i
    case choice
    when 1
        p "enter the numbers for addtion"
        a=gets.chomp.to_i
        b=gets.chomp.to_i
        c=a+b
        p "addition of #{a} & #{b} is #{c}"
    when 2
        p "enter the numbers for subtraction"
        a=gets.chomp.to_i
        b=gets.chomp.to_i
        c=a-b
        p "subtraction of #{a} & #{b} is #{c}"
    when 3
        p "enter the numbers for Multiplication"
        a=gets.chomp.to_i
        b=gets.chomp.to_i
        c=a*b
        p "Multiplication of #{a} & #{b} is #{c}"
    when 4
        p "enter the numbers for dividion"
        p "enter the numerical value"
        a=gets.chomp.to_i
        p "enter the divisor"
        b=gets.chomp.to_i
        c=a/b
        p "Division of #{a} & #{b} is #{c}"
    when 5
        p "enter the numbers"
        a=gets.chomp.to_i
        p "enter the positive Divisior value "
        b=gets.chomp.to_i
        c=a%b
        p "Modulo Division of #{a} & #{b} is #{c}"
    when 6
        p "enter the numbers"
        a=gets.chomp.to_i
        b=gets.chomp.to_i
        c=a**b
        p "addition of #{a} & #{b} is #{c}"
    else
        break
    end
end 