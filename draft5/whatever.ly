\version "2.19.83"
\language "english"


setGrace = #(define-music-function (parser location stemLen) (number?)
#{
\once \stemDown
\once \override Stem.length = #stemLen
#})

\score {
  \new PianoStaff <<
    \new Staff {
      \override Staff.Stem.stemlet-length = #1
      \override Score.BarNumber.break-visibility = ##(#f #f #t)

      \override Beam #'damping = #+inf.0

      \set tupletFullLength = ##t

      \override TupletNumber.font-size = #1.5
      \override TupletNumber.extra-offset = #'(0 . 0.5)
      \override TupletBracket.extra-offset = #'(0 . .5)
      \override Staff.TimeSignature.font-size = #4
      \override Rest.font-size = #2.5

      \override TupletNumber.text = #tuplet-number::calc-denominator-text
      \override TupletBracket.bracket-visibility = ##t
      \stopStaff
      \override Staff.StaffSymbol.line-positions = #'(-11 -9 -7 -2 0 2 7 9 11)

      \startStaff
      \clef percussion
      \stemUp
      \time 3/8

      \tuplet 7/4 {
        e'16.  [
        a16

        e'16-- ]
      }

      \tuplet 6/4 {
        r16. [

        \grace {
          \setGrace #23
          a32
        }

        e''32

        e'-^  c'  ]
      }

      %45
      \tuplet 7/4 {
        r16 [ e''32 a16 c'32
        e' ]
      }

      \tuplet 6/4 {
        g''16 [
        a32
        e''32 e'16 ]
      }

      \tuplet 6/4 {
        r16. [

        e''16
        a32 ] }

        e''32-- [ e'' \grace {
          \setGrace #32
          c''
        }
        e'--  \grace {
          \setGrace #36
          g''
        }
        a-^  ]
      }
    >>
    \layout {

      \context {
        \Voice
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        \override TupletBracket.breakable = ##t
        \remove "Forbid_line_break_engraver"
        \remove "Tuplet_bracket_engraver"
        \override Beam.breakable = ##t
        \override Glissando.breakable = ##t
      }

    }
  }
