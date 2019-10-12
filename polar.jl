struct Polar{T<:Real} <: Number
  r :: T
  θ :: T
end

Base.show(io::IO, z::Polar) = print(io, z.r, " * exp(", z.θ, "im)")

Base.show(io::IO, ::MIME"text/plain", z::Polar{T}) where {T} = print(io, "Polar{$T} complex number:\n    ", z)
Base.show(io::IO, ::MIME"text/html",  z::Polar{T}) where {T} = print(io, "<code>Polar{$T}</code> complex number: ", z.r, " <i>e</i><sup>", z.θ, " <i>i</i></sup>")
function Base.show_unquoted(io::IO, z::Polar, ::Int, precedence::Int)
  if Base.operator_precedence(:*) <= precedence
    print(io, "(")
    show(io, z)
    print(io, ")")
  else
    show(io, z)
  end
end

firstlast(b::Bool) = firstlast(Val(b))
firstlast(i::Int) = firstlast(Val(i))

firstlast(::Val{true}) = "First"
firstlast(::Val{false}) = "Last"
firstlast(::Val{1}) = "First"
firstlast(::Val{0}) = "Last"
firstlast(::Val{T}) where {T<:Number} = "Whoops"
