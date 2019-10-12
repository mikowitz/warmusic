defmodule Draft2 do
  @binary Enum.map(?a..?z, fn c -> Integer.to_string(c - ?`, 2) end)

  def binary, do: @binary
  def binary(x) do
    Enum.map(@binary, &String.pad_leading(&1, x, "0"))
    |> Enum.map(&String.replace(&1, "1", "2", global: false))
  end

  def achilles(pad, join \\ false) do
    do_map('achilles', pad, join)
  end

  def patroclus(pad, join \\ false) do
    do_map('patroclus', pad, join)
  end

  def hector(pad, join \\ false) do
    do_map('hector', pad, join)
  end

  defp do_map(name, pad, join) do
    ret = name
    |> Enum.map(fn c ->
      pad |> binary |> Enum.at(c - ?a)
    end)
    case join do
      true -> Enum.join(ret, "")
      false -> ret
    end
  end

  def wmnot(name, pad, join \\ false) do
    with letters <- do_map(name, pad, false) do
      nls = Enum.map(letters, fn letter ->
        {nl, _} = Enum.reduce(String.split(letter, "", trim: true), {"", 0}, fn c, {ret, t} ->
          case {c, t} do
            {"2", _} -> {ret <> "0", t}
            {"1", _} -> {ret <> "0", t}
            {"0", 0} -> {ret <> "2", 1}
            {"0", 1} -> {ret <> "1", t}
          end
        end)
        nl
      end)
      case join do
        true -> Enum.join(nls, "")
        false -> nls
      end
    end
  end

  def wmor(kw) do
    kw
  end

  def wmand(kw) do
    [l1, l2] = Keyword.values(kw)
    l = Enum.map([l1, l2], &String.length/1) |> Enum.max

    indices = for i <- 0..l-1 do
      case {Enum.at(String.codepoints(l1 <> l1), i), Enum.at(String.codepoints(l2 <> l2), i)} do
        {"0", _} -> 0
        {_, "0"} -> 0
        _ -> 1
      end
    end
    IO.inspect indices

    ret1 = Enum.map(Enum.with_index(String.codepoints(l1)), fn {c, i} ->
      case Enum.at(indices, i) do
        0 -> "0"
        1 -> c
      end
    end) |> Enum.join("")
    ret2 = Enum.map(Enum.with_index(String.codepoints(l2)), fn {c, i} ->
      case Enum.at(indices, i) do
        0 -> "0"
        1 -> c
      end
    end) |> Enum.join("")
    Enum.zip(Keyword.keys(kw), [ret1, ret2]) |> Enum.into(Keyword.new)
  end

  def wmand(l1, l2) do
    l = Enum.map([l1, l2], &String.length/1) |> Enum.max

    indices = for i <- 0..l-1 do
      case {Enum.at(String.codepoints(l1 <> l1), i), Enum.at(String.codepoints(l2 <> l2), i)} do
        {"0", _} -> 0
        {_, "0"} -> 0
        _ -> 1
      end
    end
    IO.inspect indices

    ret1 = Enum.map(Enum.with_index(String.codepoints(l1)), fn {c, i} ->
      case Enum.at(indices, i) do
        0 -> "0"
        1 -> c
      end
    end) |> Enum.join("")
    ret2 = Enum.map(Enum.with_index(String.codepoints(l2)), fn {c, i} ->
      case Enum.at(indices, i) do
        0 -> "0"
        1 -> c
      end
    end) |> Enum.join("")
    [ret1, ret2]
  end

  def wmxor3(l1, l2, l3) do
    l = Enum.map([l1, l2, l3], &String.length/1) |> Enum.max

    IO.inspect([0, String.length(l1), String.length(l2), String.length(l3), l])

    indices = for i <- 0..l-1 do
      case {Enum.at(String.codepoints(l1 <> l1), i), Enum.at(String.codepoints(l2 <> l2), i), Enum.at(String.codepoints(l3 <> l3), i)} do
        {"0", "0", "1"} -> 1
        {"0", "1", "0"} -> 1
        {"1", "0", "0"} -> 1
        {"1", "1", "1"} -> 1
        _ -> 0
      end
    end

    ret1 = Enum.map(Enum.with_index(String.codepoints(l1)), fn {c, i} ->
      case Enum.at(indices, i) do
        0 -> "0"
        1 -> c
      end
    end) |> Enum.join("")
    ret2 = Enum.map(Enum.with_index(String.codepoints(l2)), fn {c, i} ->
      case Enum.at(indices, i) do
        0 -> "0"
        1 -> c
      end
    end) |> Enum.join("")
    ret3 = Enum.map(Enum.with_index(String.codepoints(l3)), fn {c, i} ->
      case Enum.at(indices, i) do
        0 -> "0"
        1 -> c
      end
    end) |> Enum.join("")
    [ret1, ret2, ret3]
  end

  def wmxor3(kw) do
    [l1, l2, l3] = Keyword.values(kw)
    l = Enum.map([l1, l2, l3], &String.length/1) |> Enum.max

    IO.inspect([0, String.length(l1), String.length(l2), String.length(l3), l])

    indices = for i <- 0..l-1 do
      case {Enum.at(String.codepoints(l1 <> l1), i), Enum.at(String.codepoints(l2 <> l2), i), Enum.at(String.codepoints(l3 <> l3), i)} do
        {"0", "0", "1"} -> 1
        {"0", "1", "0"} -> 1
        {"1", "0", "0"} -> 1
        {"1", "1", "1"} -> 1
        _ -> 0
      end
    end

    ret1 = Enum.map(Enum.with_index(String.codepoints(l1)), fn {c, i} ->
      case Enum.at(indices, i) do
        0 -> "0"
        1 -> c
      end
    end) |> Enum.join("")
    ret2 = Enum.map(Enum.with_index(String.codepoints(l2)), fn {c, i} ->
      case Enum.at(indices, i) do
        0 -> "0"
        1 -> c
      end
    end) |> Enum.join("")
    ret3 = Enum.map(Enum.with_index(String.codepoints(l3)), fn {c, i} ->
      case Enum.at(indices, i) do
        0 -> "0"
        1 -> c
      end
    end) |> Enum.join("")
    Enum.zip(Keyword.keys(kw), [ret1, ret2, ret3]) |> Enum.into(Keyword.new)
  end

  def wmxor(l1, l2) do
    l = Enum.map([l1, l2], &String.length/1) |> Enum.max

    IO.inspect([0, String.length(l1), String.length(l2), l])

    indices = for i <- 0..l-1 do
      case {Enum.at(String.codepoints(l1 <> l1), i), Enum.at(String.codepoints(l2 <> l2), i)} do
        {"0", n} when n != "0" -> 1
        {n, "0"} when n != "0" -> 1
        _ -> 0
      end
    end
    ret1 = Enum.map(Enum.with_index(String.codepoints(l1)), fn {c, i} ->
      case Enum.at(indices, i) do
        0 -> "0"
        1 -> c
      end
    end) |> Enum.join("")
    ret2 = Enum.map(Enum.with_index(String.codepoints(l2)), fn {c, i} ->
      case Enum.at(indices, i) do
        0 -> "0"
        1 -> c
      end
    end) |> Enum.join("")
    [ret1, ret2]
  end

  def wmxor(kw) do
    # l = Enum.map([l1, l2], &String.length/1) |> Enum.max
    l = Enum.map(kw, fn {_, v} -> String.length(v) end) |> Enum.max

    [l1, l2] = Keyword.values(kw)
    IO.inspect([0, String.length(l1), String.length(l2), l])

    indices = for i <- 0..l-1 do
      case {Enum.at(String.codepoints(l1 <> l1), i), Enum.at(String.codepoints(l2 <> l2), i)} do
        {"0", n} when n != "0" -> 1
        {n, "0"} when n != "0" -> 1
        _ -> 0
      end
    end
    ret1 = Enum.map(Enum.with_index(String.codepoints(l1)), fn {c, i} ->
      case Enum.at(indices, i) do
        0 -> "0"
        1 -> c
      end
    end) |> Enum.join("")
    ret2 = Enum.map(Enum.with_index(String.codepoints(l2)), fn {c, i} ->
      case Enum.at(indices, i) do
        0 -> "0"
        1 -> c
      end
    end) |> Enum.join("")
    Enum.zip(Keyword.keys(kw), [ret1, ret2]) |> Enum.into(Keyword.new)
  end


  def length(list) do
    list
    |> Enum.map(&String.length/1)
    |> Enum.sum
  end

  def to_beat(name, pad, chunk) do
    apply(__MODULE__, name, [pad])
    |> Enum.join("")
    |> to_charlist
    |> Enum.chunk_every(chunk)
  end

  def lengths do
    IO.puts([
      0,
      "Ach.",
      "Patr.",
      "Hector"
    ] |> Enum.join("\t"))
    Enum.map(1..8, fn n ->
      IO.puts([
        n,
        achilles(n) |> __MODULE__.length,
        patroclus(n) |> __MODULE__.length,
        hector(n) |> __MODULE__.length,
      ] |> Enum.join("\t"))
    end)
  end

  def to_lily(str) do
    str |> String.replace("1", "c16 ") |> String.replace("2", "c16-> ") |> String.replace("0", "r16 ")
  end


  def generate_all do
    [
      [a: achilles(1, true)],
      wmor(a: achilles(2, true), p: patroclus(1, true)),
      wmxor(a: achilles(3, true), p: patroclus(2, true)),
      wmor(a: achilles(4, true), p: patroclus(3, true)),
      [p: patroclus(4, true)],
      wmand(p: patroclus(5, true), h: hector(1, true)),
      wmxor(p: patroclus(6, true), h: hector(2, true)),
      wmor(p: wmnot('patroclus', 5, true), h: hector(3, true)),
      [h: hector(4, true)],
      [p: wmnot('patroclus', 4, true)],
      wmxor3(a: achilles(5, true), p: wmnot('patroclus', 3, true), h: hector(5, true)),
      wmxor(a: achilles(5, true), p: wmnot('patroclus', 2, true)),
      wmor(a: achilles(4, true), h: hector(6, true)),
      wmand(a: achilles(3, true), h: hector(7, true)),
      wmor(a: achilles(2, true), p: wmnot('patrolus', 1, true), h: wmnot('hector', 8, true)),
      [a: wmnot('achilles', 1, true)]
    ]
  end


end
