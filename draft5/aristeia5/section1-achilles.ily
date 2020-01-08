sectionOneAchilles = {
      \time 8/8
      \override Score.MetronomeMark.extra-offset = #'(0 . 2)
      \tempo \markup {
        \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 40"
        "| deliberate, preparatory"
      }

      %1
      f,32
        -^
        _.
        [
        \ff \>
      a,
        -.
      a,
        -.

      \set stemRightBeamCount = 1
      a,
        -.

      %2
      \once \override Dots.font-size = 2
      \tweak Y-offset #1.5
      \set stemLeftBeamCount = 1
      r16.

      \set stemRightBeamCount = 1
      c32
        -.

      %3
      \override Stem.details.beamed-lengths = #'(13)
      \once \override Dots.font-size = 2
      \tweak Y-offset #1.5
      \set stemLeftBeamCount = 1
      r16
      a,32
        -.

      \set stemRightBeamCount = 1
      a,
        -.


      %4
      \set stemLeftBeamCount = 1
      a,16.
        -.
      \set stemRightBeamCount = 1
      a,32
        -.
        --

      %5
      \override Stem.details.beamed-lengths = #'(12)
      \set stemLeftBeamCount = 1
      f,16.
        -.
      \set stemRightBeamCount = 1
      c32
        -.


      %6
      \override Stem.details.beamed-lengths = #'(13)
      \set stemLeftBeamCount = 1
      r32
      f,
        -.
      \set stemRightBeamCount = 1
      a,16
        -.
        \pp



      %7
      \override Stem.details.beamed-lengths = #'(12)
      \set stemLeftBeamCount = 1
      r32
      \once \override TextSpanner.extra-offset = #'(0 . 3)
      \once \override TextSpanner.bound-details.left.text = "poco accel."
      \once \override TextSpanner.bound-details.right.padding = #7
      \setDynOffset #'(0 . -2)
      c32
        -.
        -^
        \startTextSpan
        \ff \>
      c
        -.
      \set stemRightBeamCount = 1
      c
        -.

      %8
      \set stemLeftBeamCount = 1
      c
        -.
      f,
        -.
      a,
        -.
      <f, a>32
        \mp \<
        ]
        (

    }
