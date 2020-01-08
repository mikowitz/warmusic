sectionSevenAchillesPatroclus = {
  %81
  \override Stem.details.beamed-lengths = #'(5)
  \tuplet 5/4 {
    \set stemLeftBeamCount = 1
    e''16
    \set stemRightBeamCount = 1
    f,16.
      _(
      --

      \p
  }

  %82
  \override Stem.details.beamed-lengths = #'(10)

  \tuplet 7/4 {
    \set stemLeftBeamCount = 1
    e'32

    a,16
      )
    \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r16
    \set stemRightBeamCount = 1
    a16
      _(
      \<

  }


  %\break
  \time 2/8

  %83
  \override Stem.details.beamed-lengths = #'(9)
  \set stemLeftBeamCount = 1
  c'32
  c'16
  c'32
    )
    ]
    \mf

  %84
  \override Stem.details.beamed-lengths = #'(12.5)
  \tuplet 7/4 {
    \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r8
      [
    c16.
      (
      \f
  }

  \break
  \time 4/8

  %85
  \override Stem.details.beamed-lengths = #'(9)
  \once \override TextSpanner.bound-details.left.text = "accel. "
  \once \override TextSpanner.bound-details.right.padding = #6.5
  \once \override TextSpanner.extra-offset = #'(0 . 2)
  c'16.
    -^

    \startTextSpan
    \ff \>
  c'32
    --

  %86
  \override Stem.details.beamed-lengths = #'(11)
  \tuplet 7/4 {
    e'8
      )
      \mp
    \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r16
    \set stemRightBeamCount = 1
    c32

  }



  %\time 2/8
  %87
  \override Stem.details.beamed-lengths = #'(12.5)
  \tuplet 5/4 {
    \set stemLeftBeamCount = 1
    \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r16

    c32
      \p
    \set stemRightBeamCount = 1
    c16

  }

  %88
  \set stemLeftBeamCount = 1
  \override Stem.details.beamed-lengths = #'(10)
  \once \override Dots.font-size = 2
  \tweak Y-offset #1.5
  r16.

  <c a>32
    ]


  %    \break
  \time 3/8

  %89
  \override Stem.details.beamed-lengths = #'(13)
  \tuplet 6/4 {
    \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r16.
      [
    e'16
      _(
      \<

    \set stemRightBeamCount = 1
    f,32

  }
  %90
  \override Stem.details.beamed-lengths = #'(10)
  \tuplet 5/4 {
    \set stemLeftBeamCount = 1
    c'16.

    \set stemLeftBeamCount = 2
    \set stemRightBeamCount = 3
    a,32
    a32:256
      )
      ]
      \mf
  }

  %\time 2/8
  %91
  \once \override Dots.font-size = 2
  \tweak Y-offset #1.5
  r8
}
