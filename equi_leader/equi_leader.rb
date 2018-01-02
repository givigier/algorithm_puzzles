class EquiLeader
  def equi_leader_count(a)
    equi_leaders = 0
    a_length = a.length
    stack = []
    a.each { |n| (stack.last != n) && stack.any? ? stack.pop : stack.push(n) }
    leader_candidate = stack.last

    leader_count = a.select { |v| v == leader_candidate }.size

    left_leaders = 0

    a.each_with_index do |v, i|
      if v == leader_candidate
        leader_count -= 1
        left_leaders += 1
      end
      if left_leaders > (i + 1) / 2 && leader_count > (a_length - i - 1) / 2
        equi_leaders += 1
      end
    end

    equi_leaders
  end
end
