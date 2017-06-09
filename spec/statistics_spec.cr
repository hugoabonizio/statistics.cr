require "./spec_helper"

module Enumerable
  include Statistics
end

describe Statistics do
  it "#mean" do
    [1, 2, 3].mean.should eq(2)
    [6, 6, 6].mean.should eq(6)
    [1.1, 1.2, 1.3].mean.should eq(1.2)
  end

  it "#median" do
    [1, 2, 3].median.should eq(2)
    [1, 2, 3, 4, 5].median.should eq(3)
    [1, 2, 3, 4, 5, 6].median.should eq(3.5)
    [1, 20, 50, 60, 10].median.should eq(20)
  end
end
