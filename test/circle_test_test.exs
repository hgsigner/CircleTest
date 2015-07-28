defmodule CircleTestTest do
  use ExUnit.Case

  test "has the right remainng place" do
    assert CircleTest.remaining_place([1,2,3,4,5,6,7,8,9,10], 0) == 5
    assert CircleTest.remaining_place([1,2,3,4], 0) == 1
    assert CircleTest.remaining_place([1,2,3,4], 1) == 2
  end
end
