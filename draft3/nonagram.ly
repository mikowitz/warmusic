\version "2.19.83"
\language "english"

\paper {
  ragged-last-bottom = ##t
  % line-width = 7.5\in
  left-margin = 0.5\in
  right-margin = 1.5\in
  bottom-margin = 1.25\in
  top-margin = 1.25\in
  tagline =##f
  indent = 0
  ragged-right = ##f
  system-system-spacing.minimum-distance = #50
}

\score {
  \new PianoStaff <<
    \new Staff {
    \override Staff.Stem.stemlet-length = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #t)
    % \stemDown
  \stemUp

  \override Beam #'damping = #+inf.0

    \stopStaff
    \override Staff.StaffSymbol.line-positions = #'(-11 -9 -7 -2 0 2 7 9 11)
    \override TupletNumber.font-size = #1.5
    \override TupletNumber.extra-offset = #'(0 . 0.5)
    \override TupletBracket.extra-offset = #'(0 . .5)
    \hide Beam
    \hide Stem
    \startStaff
    \clef percussion
      % \override Staff.TimeSignature.font-size = #4
      \omit Staff.TimeSignature
      \time 3/8
      f,8
      _\markup {
        low
      }
      _\tweak X-offset #3
      _\tweak Y-offset #-12
      _\markup { \bold "Wood Blocks" }
      a,8
      _\markup {
        mid
      }
      c8
      _\markup {
        high
      }

      a8
      _\markup {
        low
      }
      _\tweak X-offset #7
      _\tweak Y-offset #-12
      _\markup { \bold "Toms" }
      c'8
      _\markup {
        mid
      }
      e'8
      _\markup {
        high
      }

      c''8
      _\markup {
        low
      }
      _\tweak X-offset #1
      _\tweak Y-offset #-12
      _\markup { \bold "Table Cymbals" }
      e''8
      _\markup {
        mid
      }
      g''8
      _\markup {
        high
      }
    }
  >>
}
