rhythms = [
           (3,),
           (1,4),
           (1,2,5),
           (1,2),
           (1,2,4),
           (1,3,4),
           (3,4),
           (3,5),
           (1,3),
           (2,3),
           (1,2,4,5),
           (1,3,4,5),
           (2,),
           (4,),
           (1,2,3,5),
           (1,4,5),
           (2,4),
           (2,3,4),
           (4,5),
           (1,2,3,4),
           (3,4,5),
           (1,2,3,4,5),
           (1,2,3),
           (1,3,5),
           (2,5),
           (1,),
          ]

english = "abcdefghijklmnopqrstuvwxyz"
greek = "αβγδϵζηθικλμνξoπρστυϕχψω"

eng = zip(english, rhythms) |> collect |> Dict
grk = zip(greek, rhythms) |> collect |> Dict

opening_en = "singmusetherageofpeleussonachilles"
opening_gr = "μηνιναϵιδϵθϵαπηληιαδϵωαχιληoσ"

ending_en = "andsotheyburiedhectorbreakerofhorses"
ending_gr = "ωσoιγαμϕιϵπoνταϕoνϵκτρoσιππoδαμoιo"

to_rhythm(t::Tuple) = map(x -> x in t ? "c" : "r", 1:5)
#= to_rhythm(t::Tuple) = [x in t ? "c" : "r" for x in 1:5] =#

yourpart(x, n) = [x[i:min(i+n-1,length(x))] for i in 1:n:length(x)]

function findindex(char::Char, str::String)
  ((findall(x -> x == char, collect(str)) |> first) - 1)
end

proem_gr = vcat(to_rhythm.(map(c -> grk[c], collect(opening_gr)))...)
proem_en = vcat(to_rhythm.(map(c -> eng[c], collect(opening_en)))...)

function map_pitches(rhythm, chars, alphabet)
  chars = Iterators.cycle(chars)
  index = 0
  map(rhythm) do c
    if c == "c"
      c = collect(Iterators.take(Iterators.drop(chars, index), 1))[1]
      index += 1
      #= 7 - (findindex(c, english) % 7) =#
      #= (c, findindex(c, alphabet)) =#
      findindex(c, alphabet)
    else
      "R"
    end
  end
end

function get_pitches(rtext, rdict, ptext, palphabet, breaks)
  yourpart(map_pitches(vcat(get_rhythms(rtext, rdict)...), ptext, palphabet), breaks)
end

function map_pitches(rhythm, chars)
  chars = Iterators.cycle(chars)
  index = 0
  map(rhythm) do c
    if c == "c"
      c = collect(Iterators.take(Iterators.drop(chars, index), 1))[1]
      index += 1
      (c, (findindex(c, greek) % 7) + 1)
      #= (findindex(c, greek) % 7) + 1 =#
    else
      "R"
    end
  end
end

get_rhythms(str) = to_rhythm.(map(c -> eng[c], collect(str)))
get_rhythms(str, dict) = to_rhythm.(map(c -> dict[c], collect(str)))

function mod_in_range(low, high, list)
  map(x -> (x % (high + 1 - low)) + low, list)
end

function loose_mod_in_range(low, high, list)
  map(x -> x == "R" ? "R" : pitchmap[(x % (high + 1 - low)) + low], vcat(list...))
end

pitchmap = Dict(1 => "f", 2 => "g", 3 => "a", 4 => "b", 5 => "c", 6 => "d", 7 => "e")

invmap = Dict("f" => "e",
              "g" => "d",
              "a" => "c",
              "b" => "b",
              "c" => "a",
              "d" => "g",
              "e" => "f",
              "R" => "R"
             )
