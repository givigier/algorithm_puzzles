t = gets.strip.to_i
queue = []
for a0 in (0..t-1)
    expression = gets.strip.split(" ")
    if expression[0] == "1"
        queue.push(expression[1])
    elsif expression[0] == "2"
        queue.shift
    elsif expression[0] == "3"
        puts queue.first
    end
end
