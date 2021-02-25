defmodule Rocketpay.NumberTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "When there is a file whith the given name, returns the sum of the numbers" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "When there isn't a file whith the given name, returns an error" do
      response = Numbers.sum_from_file("file_that_not_exist")

      expected_response = {:error, %{message: "Invalid file!"}}

      assert response == expected_response
    end
  end
end
