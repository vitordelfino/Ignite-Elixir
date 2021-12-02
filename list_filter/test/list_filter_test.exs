defmodule ListFilterTest do
  use ExUnit.Case
  describe "call/1" do
    test "should return quantity of odd number" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]
      response = ListFilter.call(list)
      expected_response = 3
      assert response == expected_response
    end

    test "should return quantity of odd number when list is empty" do
      list = []
      response = ListFilter.call(list)
      expected_response = 0
      assert response == expected_response
    end
  end
end
