sectionTwoAchillesPatroclus = {
      %9
      \override Stem.details.beamed-lengths = #'(8.5)
      \tempo \markup {
        \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 60"
      }
      \tuplet 7/4 {

        c'16\pp
        \stopTextSpan c'16.-^ \ff \>

        \set stemLeftBeamCount = 2
        \set stemRightBeamCount = 3
        c32

        c'
      }

      % 10
      \once \override Dots.font-size = 2
      \tweak Y-offset #1.5
      r16
      <a, e'>32

      <f, c'>32 \pp

      \break

      \time 4/8
      %11

      \tuplet 7/4 {

        < a, c'>16  c'32 c'32 a f,

        e'-^  \ff \>
      }

      % 12

      \tuplet 5/4 {

        <c a>32   c'16.--

        <c c'>32   \mp
      }

      %\time 2/8

      %13
      r32
      <a, c'>32 \<
      <f, c'>

      c' ]

      %14
      \override Stem.details.beamed-lengths = #'(8)
      r32 [
      \once \override TextSpanner.bound-details.left.text = "rit."
      \once \override TextSpanner.extra-offset = #'(0 . 3.5)
      \once \override TextSpanner.bound-details.left.padding = #-5

      \once \override TextSpanner.bound-details.right.padding = #-2
      <a, e'> \ff
      -^ \startTextSpan
      \setDynOffset #'(0 . -7)
      <f, a>-^
      e' \stopTextSpan ] \mf


      \time 3/8

      % 15
      \override Stem.details.beamed-lengths = #'(13)
      \tempo \markup {
        \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 40"
        "| but now restless"
      }
      %\tempo 8 = 15
      r32 [ c16-- \>

      a,32

      % 16
      \override Stem.details.beamed-lengths = #'(9)
      \tuplet 7/4 {

        c32  c'16.

        a16.  \p
      }

      % 17
      \override Stem.details.beamed-lengths = #'(13)
      r32
      \setDynOffset #'(0 . -4)
      <a, e'>16. \pp

      %\time 3/8


      % 18
      \tuplet 5/4 {
        \setDynOffset #'(0 . -3)
        c32  \<


        <a, a>16.

        e'32--
      }

      % 19

      \override Stem.details.beamed-lengths = #'(8)
      %    \set tupletFullLengthNote = ##t
      \tuplet 5/4 {

        c'16

        c'16. ] \mp
      }

      % 20
      \override Stem.details.beamed-lengths = #'(9.5)
      \setDynOffset #'(0 . -8)
      \tuplet 5/4 {
        r32 [ a8 \pp
      }

      \break
      \time 3/8

      % 21
      \override Stem.details.beamed-lengths = #'(10)

      \setDynOffset #'(0 . -4)
      <a, e'>16.-^   \ff
      \setDynOffset #'(0 . -7)
      c32  \mp

      \setDynOffset #'(0 . -2)
      % 22
      \override Stem.details.beamed-lengths = #'(9.5)
      r32

      a16. \mf\>

      % 23
      \override Stem.details.beamed-lengths = #'(13)
      a,16.

      <c e'>32--

      \time 4/8

      % 24
      \override Stem.details.beamed-lengths = #'(11)
      \grace {
        \setGrace #20

        %\once \override Stem.length = #23
        a32
      }

      \tuplet 5/4 {
        a,32
        c32

        e'16.
      }

      % 25
      \override Stem.details.beamed-lengths = #'(9)
      \tuplet 5/4 {

        c'32 [c16 a16 ] \p
      }


      %\time 2/8

      %26
      \override Stem.details.beamed-lengths = #'(7.5)
      \grace {
        \setGrace #13
        c'32
      }
      a,--  [ \<
      \grace {
        \setGrace #15
        e'
      }
      c
      \grace {
        \setGrace #20
        a
      }
      c
      e' ]

      %27

      a32 [

      < c e'>-^  \ff

      \once \override TextSpanner.extra-offset = #'(0 . 2.5)
      \once \override TextSpanner.bound-details.left.text = "molto accel. "
      \once \override TextSpanner.bound-details.right.padding = -1
      <f, a>-^  \startTextSpan e' ]

      \time 3/8

      % 28
      \override Stem.details.beamed-lengths = #'(9.5)
      \tuplet 6/4 {
        \once \override Dots.font-size = 2
        \tweak Y-offset #1.5
        r16 [
        c'32 \pp \<

        c16

        a32 ]
      }

      %29
      \override Stem.details.beamed-lengths = #'(11)
      c32  [
      <c c'>

      c'16-- ]

      %30
      \override Stem.details.beamed-lengths = #'(8)


      <a, c'>32  [
      <f, e'>-^   \ff
      \once \override Score.MetronomeMark.extra-offset = #'(4 . 5)
      \tempo \markup {
        "(" \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 120)"
      }
      c'16:128 \stopTextSpan ] \sp

}
