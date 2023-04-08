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
  @word_list "assets/words.txt"
  |> File.read!()
  |>String.split(~r/\n/, trim: true)

  def random_word do
    @word_list
    |>Enum.random()
  end
end
