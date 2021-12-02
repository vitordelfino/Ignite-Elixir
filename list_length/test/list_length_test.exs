defmodule ListLengthTest do
  use ExUnit.Case
  describe "call/1" do
    test "should return the length of a list" do
      list = [1, 2, 3]
      response = ListLength.call(list)
      expected_response = 3
      assert response == expected_response
    end
    test "should return 0 for an empty list" do
      list = []
      response = ListLength.call(list)
      expected_response = 0
      assert response == expected_response
    end
  end
end
