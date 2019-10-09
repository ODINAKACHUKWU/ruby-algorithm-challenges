def factorial(number)
    num = number.to_i
    if num <= 1
        return 1
    else
        return num * factorial(num - 1)
    end
end

puts factorial 0
