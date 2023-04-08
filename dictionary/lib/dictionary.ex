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
  def word_list do
    "assets/words.txt"
    |> File.read!()
    |>String.split(~r/\n/, trim: true)
  end

  def random_word do
    word_list()
    |>Enum.random()
  end
end
