defmodule Morse do
  @morse %{
    "a" => ".-",
    "c" => "-.-.",
    "e" => ".",
    "h" => "....",
    "i" => "..",
    "l" => ".-..",
    "o" => "---",
    "p" => ".--.",
    "r" => ".-.",
    "s" => "...",
    "t" => "-",
    "u" => "..-"
  }

  def to_morse(str) do
    # String.split(str, "", trim: true)
    String.codepoints(str)
    |> Enum.map(fn c ->
      @morse[c] |> String.split("", trim: true)
    end)
  end

  def stream(str) do
    str
    |> to_morse()
    |> List.flatten()
    |> Stream.cycle
    |> Stream.chunk_every(3, 1)
  end

  def to_steps(str, count, drop \\ 0) do
    str
    |> stream()
    |> Stream.drop(drop)
    |> Enum.take(count)
    |> Enum.map(fn trio ->
      rem(Enum.count(trio, fn c -> c == "-" end), 3)
    end)
  end
end
