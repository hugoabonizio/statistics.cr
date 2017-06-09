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
end
