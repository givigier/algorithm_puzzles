class FrogJmp
  def number_of_jumps(current_position, goal_position, jump)
    return 0 if current_position >= goal_position
    ((goal_position - current_position).to_f/jump).ceil
  end
end
