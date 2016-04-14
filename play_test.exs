Code.load_file("play.exs")
ExUnit.start
ExUnit.configure exclude: :pending, trace: true

defmodule DemoTest do
  use ExUnit.Case

  test "saying hello to somebody" do
    assert Demo.hello("Rick") == "Hello, Rick!"
  end

  @tag :pending
  test "word counting" do
    assert Demo.word_count("   tuna banana sombrero ") == 3
  end

  @tag :pending
  test "run length encoding a string" do
    assert Demo.run_length_encode("BEEHIVE") == "1B2E1H1I1V1E"
  end

  @tag :pending
  test "counting a list" do
    assert Demo.count([1,3,5,7]) == 4
  end

  @tag :pending
  test "reversing a list" do
    assert Demo.reverse([1,3,5,7]) == [7,5,3,1]
  end

  @tag :pending
  test "mapping a list" do
    assert Demo.map([1,3,5,7], fn e -> e + 1 end) == [2,4,6,8]
  end
end
