\version "2.19.83"
\language "english"

{
\override TupletNumber.font-size = #1.2
    \override TupletNumber.extra-offset = #'(0 . 0.5)
    \override TupletBracket.extra-offset = #'(0 . .5)
    % \override TupletNumber.text = #tuplet-number::calc-denominator-text
    \override TupletBracket.bracket-visibility = ##t
     \set tupletFullLength = ##t

     \once \override TupletNumber.text = "X"
     \tuplet 3/2 {
    r2
    r2
    r2
  }
  r1
     \once \override TupletNumber.text = "X:4"
  \tuplet 3/2 {
    r2
    r2
    r2
  }
}
