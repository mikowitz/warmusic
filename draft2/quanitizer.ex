defmodule Quanitizer do
  def round_to(t, r) do
    (t * r) + 0.0 |> Float.round |> Kernel./(r) |> Float.round(5)
  end

  def quanitize(l, r) do
    Enum.reduce(l, {[], 0}, fn el, {result, error} ->
      rounded = round_to(el, r)
      {
        result ++ [rounded],
        error + abs(rounded - el)
      }
    end)
  end

  def find_best(l) do
    Enum.reduce([4,3,5,6,7], {[], 10_000, 100}, fn r, {best_result, best_error, best_r} ->
      {res, error} = quanitize(l, r)
      # IO.inspect {r, error}
      case error < best_error do
        true -> {res, error, r}
        false -> {best_result, best_error, best_r}
      end
    end)
  end

  def calculate_all(kws) do
    Enum.reduce(kws, {[], 0}, fn set, {acc, next_offset} ->
      res = calculate(set, next_offset)
      {
        acc ++ [calculate(set, next_offset)],
        next_offset + res[:next_offset]
      }
    end)
  end

  def render_all(kws) do
    {calcd, _} = kws |> calculate_all()
    Enum.map(calcd, fn set ->
      set |> Keyword.delete(:next_offset)
      |> Enum.map(fn {k, l} ->
        Enum.map(l, fn el -> {el, k} end)
      end)
    end)
    |> List.flatten
    |> Enum.sort_by(fn {x, _} -> x end)
  end

  def timings do
    {_, ts} = 'thomasvannortwickthomasvannortwick' |>
    Enum.map(fn c -> c - ?` end) |>
    Enum.reduce({0, [0]}, fn c, {plus, acc} ->
      x = plus + c
      {x, acc ++ [x]}
    end)
    ts
  end

  def get_it_done(kws) do
    rendered = render_all(kws)
    # times = timings()
    # x = Enum.chunk_every(times, 2, 1, :discard)
    # |> Enum.map(fn [a, b] ->
    #   # rendered1
    #   Enum.filter(rendered, fn {x, _} -> x >= a / 4 && x < b/4 end)
    #   # rendered2 # Enum.drop(rendered, a) |> Enum.take(b - a)

    # end)
    # x |> Enum.map(fn l ->
    #   {_, _, r} = Enum.map(l, fn {el, _} -> el end) |> find_best()
    #   # IO.puts r
    #   {Enum.map(l, fn {el, c} -> [round_to(el, r), c] end), r}
    # end)
    # rendered3
    Enum.group_by(rendered, fn {i, _} -> Float.floor(i) end)
    |> Enum.sort_by(fn {k, _} -> k end)
    |> Enum.map(fn {i, l} ->
      {_, _, r} = find_best(Enum.map(l, fn {x, _} -> x end))
      {
        i,
        Enum.map(l, fn {el, c} -> {round_to(el, r), Float.round(el, 3), c} end),
        r
      }
    end)
  end

  def write_segment({i, l, fit}) do
    is = i |> round() |> to_string()
    filename = "rendered5/rendered_#{String.pad_leading(is, 3, "0")}"
    {:ok, f} = File.open(filename <> ".txt", [:write])
    IO.puts f, fit
    IO.puts f, ""
    Enum.each(l, fn {r, o, c} ->
      IO.puts f, "#{r} :#{c} (#{o})"
    end)
    File.close(f)
  end

  def calculate(kw, extra_offset \\ 0) do
    xs = [shortest | _others] = Enum.sort_by(Keyword.values(kw), &String.length/1)

    x = String.length(shortest)

    ret = Enum.map(kw, fn {k, str} ->
      calc = str |> String.codepoints |> Enum.with_index
      |> Enum.filter(fn {a, _} -> a != "0" end)
      |> Enum.map(fn {_, i} ->
        (i * (x / 4) / String.length(str)) + extra_offset
      end)
      {k, calc}
    end)
    Keyword.put(ret, :next_offset, String.length(shortest) / 4)
  end

  def quanitize_all(l) do
    l |> List.flatten
    |> Enum.group_by(fn n ->
      Float.round(n * 4) / 4
    end)
    |> Enum.map(fn {y, l} -> {y, Enum.sort(l)} end)
    # |> IO.inspect
    |> Enum.map(fn {y, l} ->
      {res, err, r} = find_best(l)
      {y, quanitize(l, r), r}
    end)
  end

end
