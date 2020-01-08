sectionSixPatroclusHector = {
  %73
  \override Stem.details.beamed-lengths = #'(10)
  \once \override Score.MetronomeMark.extra-offset = #'(0 . 2.5)
  \tempo \markup {
    \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 40"
    "| mournful"
  }

  r32
    [
  \set stemRightBeamCount = 1
  a16.
    -^

    \ff \>

  %74
  \override Stem.details.beamed-lengths = #'(5)
  \set stemLeftBeamCount = 1
  e''32

  \set stemRightBeamCount = 1
  c''16.


  %75
  \override Stem.details.beamed-lengths = #'(6)
  \tuplet 5/4 {
    \set stemLeftBeamCount = 1
    \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r16

    c'16
    e''32
      --
      ]
      \p
  }

  \break
  %\time 3/8

  %76
  \override Stem.details.beamed-lengths = #'(9)
  \tuplet 7/4 {
    r32
      [
    e'16
      \p
    \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r8
      ]
  }

  %77
  \tuplet 7/4 {
    \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r16
      [
    c'16
      -^
      \ff
    \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r16.
      ]
  }

  %78
  \override Stem.details.beamed-lengths = #'(10)
  \tuplet 7/4 {
    \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r8
      [
    a16.:128
      -^
      ]
      \ff \>
  }

  \time 1/8

  %79
  \once \override Dots.font-size = 2
  \tweak Y-offset #1.5
  r8 \!
  ^\tweak font-size #3
  ^\tweak Y-offset #6.5
  ^\fermata
  %\break
  \time 3/8

  %80
  \override Stem.details.beamed-lengths = #'(4)
  \once \override Dots.font-size = 2
  \tweak Y-offset #1.5
  r16
    [
  \set stemRightBeamCount = 1
  c''16

    \mp
}
