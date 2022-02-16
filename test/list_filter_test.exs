defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "return the list filter lenhgth" do
      list = [1,2,3]

      response = ListFilter.call(list)

      expected_responde = {:ok,3}

      assert response == expected_responde
    end

    test "print mensage the list empity" do
      list = []

      response = ListFilter.call(list)

      expected_responde = {:error,"Lista vazia"}

      assert response == expected_responde
    end
  end
end
