class GenomicRangeQuery
  def minimal_impacts(s, p, q)
    g_sums = {}
    g_decoded = { "A" => 1, "C" => 2, "G" => 3, "T" => 4 }
    g_decoded.each { |k, _| g_sums[k] = [0] }
    s.chars.each do |c|
      g_sums.each do |k, sums|
        if k == c
          g_sums[k] << sums[-1] + 1
        else
          g_sums[k] << sums[-1]
        end
      end
    end
    mins = []
    p.zip(q).each_with_index do |range, i|
      mins[i] = g_decoded["T"] if (g_sums["T"][range[-1] + 1] - g_sums["T"][range[0]]) > 0
      mins[i] = g_decoded["G"] if (g_sums["G"][range[-1] + 1] - g_sums["G"][range[0]]) > 0
      mins[i] = g_decoded["C"] if (g_sums["C"][range[-1] + 1] - g_sums["C"][range[0]]) > 0
      mins[i] = g_decoded["A"] if (g_sums["A"][range[-1] + 1] - g_sums["A"][range[0]]) > 0
    end
    mins
  end
end
