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

  it "#variance" do
    [2, 2, 2].variance.should eq(0)
    [1, 2, 3, 4].variance.should eq(1.25)
    [5, 10, 15].variance.should be_close(16.666666666666668, 0.001)
    [-1, 0, 1].variance.should be_close(0.6666666666666666, 0.001)
  end

  it "#standard_deviation" do
    [2, 2, 2].standard_deviation.should eq(0)
    [1, 2, 3, 4].standard_deviation.should be_close(1.1180339887499, 0.001)
    [5, 10, 15].standard_deviation.should be_close(4.08248, 0.001)
    [-1, 0, 1].standard_deviation.should be_close(0.81649658093, 0.001)
  end

  it "#frequencies" do
    [2, 2, 2].frequencies.should eq({2 => 3})
    [1, 2, 3].frequencies.should eq({1 => 1, 2 => 1, 3 => 1})
    [-1, 1, 2, 3, 3].frequencies.should eq({1 => 1, 2 => 1, 3 => 2, -1 => 1})
  end
end
