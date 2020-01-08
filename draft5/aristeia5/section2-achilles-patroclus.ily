sectionTwoAchillesPatroclus = {
  %9
  \time 2/8
  \override Stem.details.beamed-lengths = #'(8.5)
  \tempo \markup {
    \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 60"
  }
  \tuplet 7/4 {

    c'16
      [
      \stopTextSpan
    c'16.
      -^
      \ff \>

    \set stemLeftBeamCount = 2
    \set stemRightBeamCount = 3
    c32

          \set stemRightBeamCount = 1
c'
      )
  }

  % 10
        \set stemLeftBeamCount = 1

  \once \override Dots.font-size = 2
  \tweak Y-offset #1.5
  r16
  <a, e'>32 (
        \set stemRightBeamCount = 1

  <f, c'>32
  \pp

  \break

  \time 4/8
  %11

  \tuplet 7/4 {

      \set stemLeftBeamCount = 1

    < a, c'>16
      )
    c'32
    c'32
    a
    f,
          \set stemRightBeamCount = 1
e'
    (
      -^
      \ff \>
  }

  % 12

  \tuplet 5/4 {
          \set stemLeftBeamCount = 1

    <c a>32
    c'16.--
      \set stemRightBeamCount = 1
    <c c'>32
      )
      \mp
  }

  %\time 2/8

  %13
        \set stemLeftBeamCount = 1
r32
  <a, c'>32
    \<
  <f, c'>
      \set stemRightBeamCount = 1
  c'

  %14
  \override Stem.details.beamed-lengths = #'(8)
        \set stemLeftBeamCount = 1

  r32

  \once \override TextSpanner.bound-details.left.text = "rit."
  \once \override TextSpanner.extra-offset = #'(0 . 3.5)
  \once \override TextSpanner.bound-details.left.padding = #-5
  \once \override TextSpanner.bound-details.right.padding = #-2
  <a, e'>
    \ff
    -^
    \startTextSpan

  \setDynOffset #'(0 . -7)
  <f, a>
    (
    -^
  e'
    )
    \stopTextSpan
    ]
    \mf


  \time 3/8

  % 15
  \override Stem.details.beamed-lengths = #'(13)
  \tempo \markup {
    \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 40"
    "| but now restless"
  }
  r32
    [
  c16
    (
    --
    \>

        \set stemRightBeamCount = 1
a,32

  % 16
  \override Stem.details.beamed-lengths = #'(9)
  \tuplet 7/4 {
          \set stemLeftBeamCount = 1
c32
    c'16.
          \set stemRightBeamCount = 1
a16.
      )
      \p
  }

  % 17
  \override Stem.details.beamed-lengths = #'(13)
        \set stemLeftBeamCount = 1
r32
  \setDynOffset #'(0 . -4)
      \set stemRightBeamCount = 1
  <a, e'>16.
    (
    \pp

  %\time 3/8


  % 18
  \tuplet 5/4 {
    \setDynOffset #'(0 . -3)
      \set stemLeftBeamCount = 1
    c32
      )
      \<
    <a, a>16.
      (
          \set stemRightBeamCount = 1
e'32
      --
  }

  % 19
  \override Stem.details.beamed-lengths = #'(8)
  \tuplet 5/4 {
      \set stemLeftBeamCount = 1
    c'16
          \set stemRightBeamCount = 1
c'16.
      )
      \mp
  }

  % 20
  \override Stem.details.beamed-lengths = #'(9.5)
  \setDynOffset #'(0 . -8)
  \tuplet 5/4 {
    r32
    a8
      \pp
      ]
  }

  \break
  \time 3/8

  % 21
  \override Stem.details.beamed-lengths = #'(10)

  \setDynOffset #'(0 . -4)
  <a, e'>16.
    [
    (
    -^
    \ff
  \setDynOffset #'(0 . -7)
        \set stemRightBeamCount = 1
c32
    )
    \mp

  \setDynOffset #'(0 . -2)
  % 22
  \override Stem.details.beamed-lengths = #'(9.5)
        \set stemLeftBeamCount = 1
r32
        \set stemRightBeamCount = 1
a16.
   _(
    \mf \>

  % 23
  \override Stem.details.beamed-lengths = #'(13)
        \set stemLeftBeamCount = 1
a,16.
       \set stemRightBeamCount = 1
<c e'>32
    --

  \time 4/8

  % 24
  \override Stem.details.beamed-lengths = #'(11)

  \tuplet 5/4 {
          \set stemLeftBeamCount = 1
<a, a>32
    c32
          \set stemRightBeamCount = 1
e'16.
  }

  % 25
  \override Stem.details.beamed-lengths = #'(9)
  \tuplet 5/4 {
          \set stemLeftBeamCount = 1
c'32
    c16
      )
    a16
      _(
      ]
      \p
  }

  %\time 2/8

  %26
  \override Stem.details.beamed-lengths = #'(7.5)
  <a, c'>32
    --
    [
    \<


  < c e'>32
  <c a>32
      \set stemRightBeamCount = 1
  e'


  %27
      \set stemLeftBeamCount = 1
  a32

  < c e'>
    )
    -^
    \ff

  \once \override TextSpanner.extra-offset = #'(0 . 2.5)
  \once \override TextSpanner.bound-details.left.text = "molto accel. "
  \once \override TextSpanner.bound-details.right.padding = -1
  <f, a>
    -^
    _(
    \startTextSpan
  e'
    )
    ]

  \time 3/8

  % 28
  \override Stem.details.beamed-lengths = #'(9.5)
  \tuplet 6/4 {
    \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r16
      [
    c'32
      (
      \pp \<
    c16
          \set stemRightBeamCount = 1
a32

  }

  %29
  \override Stem.details.beamed-lengths = #'(11)
        \set stemLeftBeamCount = 1
c32
    )

  <c c'>
    (
      \set stemRightBeamCount = 1
  c'16
    --


  %30
  \override Stem.details.beamed-lengths = #'(8)
      \set stemLeftBeamCount = 1
  <a, c'>32

  <f, e'>
    )
    -^
    \ff

  \once \override Score.MetronomeMark.extra-offset = #'(4 . 5)
  \tempo \markup {
    "(" \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 120)"
  }

  c'16:128
    \stopTextSpan
    ]
    \sp \>
}
