require "./statistics/*"

module Statistics
  def mean
    sum.to_f / size
  end

  def median
    sorted = sort
    length = size
    return sorted[length / 2] if length.odd?
    (sorted[length / 2] + sorted[length / 2 - 1]) / 2.0
  end

  def variance
    m = mean
    map { |i| (m - i.to_f) ** 2 }.sum.to_f / size
  end

  def standard_deviation
    variance ** 0.5
  end

  def frequencies
    group_by(&.itself).map { |k, v| [k, v.size] }.to_h
  end
end
