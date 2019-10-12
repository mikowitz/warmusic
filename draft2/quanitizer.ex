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
    Enum.reduce([3,4,5,6,7,8,9], {[], 10_000, 100}, fn r, {best_result, best_error, best_r} ->
      {res, error} = quanitize(l, r)
      # IO.inspect {r, error}
      case error < best_error do
        true -> {res, error, r}
        false -> {best_result, best_error, best_r}
      end
    end)
  end

  def calculate(strings) do
    xs = [shortest | _others] = Enum.sort_by(strings, &String.length/1)

    x = String.length(shortest)

    Enum.map(xs, fn str ->
      str |> String.codepoints |> Enum.with_index
      |> Enum.filter(fn {a, _} -> a != "0" end)
      |> Enum.map(fn {_, i} ->
        i * (x / 4) / String.length(str)
      end)
    end)
  end

  def quanitize_all(l) do
    l |> List.flatten
    |> Enum.group_by(fn n ->
      Float.round(n * 4) / 4
    end)
    |> Enum.map(fn {y, l} -> {y, Enum.sort(l)} end)
    |> IO.inspect
    |> Enum.map(fn {y, l} ->
      {res, err, r} = find_best(l)
      {y, quanitize(l, r), r}
    end)
  end

end
