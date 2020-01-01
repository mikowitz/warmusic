sectionOneAchilles = {
      \time 3/8
      \override Score.MetronomeMark.extra-offset = #'(0 . 2)
      \tempo \markup {
        \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 40"
        "| deliberate, preparatory"
      }

      %1
      f,32
        ^\tweak X-offset #1.5
        ^^
        _.
        [
        \ff \>
      a,
        -.
      a,
        -.
      a,
        -.
        \p

      %2
      \once \override Dots.font-size = 2
      \tweak Y-offset #1.5
      r16.

      \setDynOffset #'(0 . -3.5)
      c32
        -.
        \pp

      %3
      \override Stem.details.beamed-lengths = #'(13)
      \once \override Dots.font-size = 2
      \tweak Y-offset #1.5
      r16
      a,32
        \mp \>
      a,


      % \time 3/8
      %4
      a,16.
      a,32
        --

      %5
      \override Stem.details.beamed-lengths = #'(12)
      f,16.
      c32


      %6
      \override Stem.details.beamed-lengths = #'(13)
      r32
      f,
      a,16
        \p
        ]


      \time 2/8

      %7
      \override Stem.details.beamed-lengths = #'(12)
      r32
        [
      \once \override TextSpanner.extra-offset = #'(0 . 3)
      \once \override TextSpanner.bound-details.left.text = "poco accel."
      \once \override TextSpanner.bound-details.right.padding = #5
      \setDynOffset #'(0 . -2)
      c32
        -^
        \startTextSpan
        \ff \>
      c
      c

      %8
      \override Stem.details.beamed-lengths = #'(13)
      c
      f,
      a,

      %    \once \override DynamicText.extra-offset = #'(0 . 2)
      <f, a>32

    }
