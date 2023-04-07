defmodule Dictionary do
  @moduledoc """
  Documentation for `Dictionary`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Dictionary.hello()
      :world

  """
  def hello do
    IO.puts "Hello World!"
  end

  def word_list do
    "assets/words.txt"
    |> File.read!()
    String.split(words, ~r/\n/, trim: true)
  end

  def random_word do
    Enum.random(word_list())

  end

  def random_phrase do
    random_phrase = "had we but world enough, and time"
    String.split(random_phrase)
  end
end
