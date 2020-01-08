\version "2.19.83"
\language "english"

\include "aristeia-paper.ily"
\include "aristeia5/section1-achilles.ily"
\include "aristeia5/section2-achilles-patroclus.ily"
\include "aristeia5/section3-patroclus.ily"
\include "aristeia5/section4-patroclus-hector.ily"
\include "aristeia5/section5-hector.ily"
\include "aristeia5/section6-patroclus-hector.ily"
\include "aristeia5/section7-achilles-patroclus.ily"
\include "aristeia5/section8-achilles-hector.ily"
\include "aristeia5/section9-achilles-patroclus-hector.ily"
\include "aristeia5/section10-achilles.ily"

\score {
  \new PianoStaff <<
    \new Staff {
      \stopStaff
      \override Staff.StaffSymbol.line-positions = #'(-11 -9 -7 -2 0 2 7 9 11)
      \startStaff

      \clef percussion

      \set strictBeatBeaming = ##t
      \set tupletFullLength = ##t
      \stemUp

      \sectionOneAchilles
      \sectionTwoAchillesPatroclus
      \sectionThreePatroclus
      \sectionFourPatroclusHector
      \sectionFiveHector
      \sectionSixPatroclusHector
      \sectionSevenAchillesPatroclus
      \sectionEightAchillesHector
      \sectionNineAchillesPatroclusHector
      \sectionTenAchilles
    }
  >>
  \layout {

    \context {
      \Score
      \override BarNumber.break-visibility = ##(#f #f #t)
    }
    \context {
      \Voice
      \override TupletNumber.text = #tuplet-number::calc-fraction-text
      \override TupletBracket.breakable = ##t
      \override TupletBracket.bracket-visibility = ##t
      \remove "Forbid_line_break_engraver"
      \remove "Tuplet_bracket_engraver"
      \override Beam.breakable = ##t
      \override Glissando.breakable = ##t
      \override Beam #'damping = #+inf.0
      \override TupletBracket #'damping = #+inf.0
      \override TupletNumber.font-size = #1.5
      \override TupletNumber.extra-offset = #'(0 . 0.5)
      \override TupletBracket.extra-offset = #'(0 . .5)
      \override TupletNumber.text = #tuplet-number::calc-denominator-text
      %\remove "Dynamic_engraver"
    }
    \context {
      \Staff
      \override TimeSignature.font-size = #6
      \override Stem.stemlet-length = #1
      \override Rest.font-size = #2.5
      \override DynamicText.extra-offset = #'(0 . -1)
      \override Hairpin.extra-offset = #'(0 . -1)
    }
  }
}
