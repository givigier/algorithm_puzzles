t = gets.strip.to_i
for a0 in (0..t-1)
    expression = gets.strip
    if (expression.length % 2) != 0
        puts("NO")
        next
    end
    stack = []
    expression.chars.each do |c|
        if c == "(" || c == "{" || c == "["
            stack.push(c)
        else
            if (stack[-1] == "(" && c == ")") || (stack[-1] == "[" && c == "]") || (stack[-1] == "{" && c == "}")
                stack.pop
            else
                stack.push(c)
            end
        end
    end
    stack.empty? ? puts("YES") : puts("NO")
end
