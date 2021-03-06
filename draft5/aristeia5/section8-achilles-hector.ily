sectionEightAchillesHector = {
          %92
          \override Beam #'damping = #+inf.0
          \time 3/8
          \tuplet 6/4 {
            \tempo \markup {
              \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 60"
              "| gearing up"

            }
            \override Stem.details.beamed-lengths = #'(5.5)
            r32 [
            \stopTextSpan
            \setDynOffset #'(0 . -5)
            c''16--  \mp
            \setDynOffset #'(0 . -3)
            \set stemRightBeamCount = 1
            f,16.-^
              \ff
          }

          %\time 3/8


          %93
          \override Stem.details.beamed-lengths = #'(10.5)
          \set stemLeftBeamCount = 1
          r32
          c
           _(
            -^
          a, \>

          \grace {
            \setGrace #11
            f,32
          }
          \set stemRightBeamCount = 1
          e''
            )

          %94
          \override Stem.details.beamed-lengths = #'(5)
          \set stemLeftBeamCount = 1
          r32 e''16 \mp

          a,32
          ]

          %95
          \override Stem.details.beamed-lengths = #'(14)
          \break
          \time 4/8
          \once \override Dots.font-size = 2
          \tweak Y-offset #1.5
          r16 [ \grace {
            \setGrace #31
            e''32
              _(
          }
          f,  \<
          \grace {
            \setGrace #33
            g''
          }
          \set stemRightBeamCount = 1
          c


          %  \break
          %$\time 3/8

          %96
          \override Stem.details.beamed-lengths = #'(6)
          \tuplet 7/4 {
            \set stemLeftBeamCount = 1
            c32
            \once \override TextSpanner.bound-details.left.text = "accel. "
            \once \override TextSpanner.extra-offset = #'(0 . 3.75)
            \once \override TextSpanner.bound-details.right.padding = #'-2
            e''16.
              )
              -^
              \ff \>
            \startTextSpan
            e''32
            \set stemRightBeamCount = 1
            a,16
          }

          %97
          \tuplet 7/4 {
            f,8--  \p \!
            \set stemLeftBeamCount = 1
            \set stemRightBeamCount = 3
            r32
            \set stemLeftBeamCount = 2
            \set stemRightBeamCount = 1
            e''16  \<
          }

          %98
          \override Stem.details.beamed-lengths = #'(7)
          \grace {
            \setGrace #31
            e''32
              _(
          }
          \tuplet 7/4 {
            \set stemLeftBeamCount = 1
            a,32 c''16-- g''32 f, a,
            \set stemRightBeamCount = 1
            c''
              )
              \mf
          }

          % \break
          %\time 4/8


          %99
          \override Stem.details.beamed-lengths = #'(6)
          %\break
          \set stemLeftBeamCount = 1
          \once \override Dots.font-size = 2
          \tweak Y-offset #1.5
          r16  \stopTextSpan
          \once \override Score.MetronomeMark.extra-offset = #'(0 . 5.5)
          \tempo \markup {
            \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 80"
            "| prepared"
          }
          \grace {
            \setGrace #11
            %      \once \override Stem.length = #'20
            f,32
          }
          \setDynOffset #'(0 . -5)
          e''-^  \ff c ]

          %100
          \once \override Dots.font-size = 2
          \tweak Y-offset #1.5
          r8

          %101
          \once \override Dots.font-size = 2
          \tweak Y-offset #1.5
          r8

          %102
          \tuplet 6/4 {

            \once \override Dots.font-size = 2
            \tweak Y-offset #1.5
            r16 [

            \set stemLeftBeamCount = 3
            \set stemRightBeamCount = 2
            \setDynOffset #'(0 . -3)
            e''32\mp
            \set stemRightBeamCount = 1
            \once \override Dots.font-size = 2
            \tweak Y-offset #1.5
            r16.
          }

          %\break
          %\time 4/8
          %103
          \override Stem.details.beamed-lengths = #'(5.5)
          \tuplet 5/4 {
            \set stemLeftBeamCount = 1
            r32
            \once \override TextSpanner.bound-details.left.text = "molto accel. "
            \once \override TextSpanner.extra-offset = #'(0 . 3)
            \once \override TextSpanner.bound-details.right.padding = #'-5
            a,32 \p

            \startTextSpan
            \set stemRightBeamCount = 1
            e''16.
          }

          %104

          \set stemLeftBeamCount = 1
          \once \override Dots.font-size = 2
          \tweak Y-offset #1.5
          r16  e''32-- \mf
          \set stemRightBeamCount = 1
          c

          %\break
          %\time 2/8
          %105
          \tuplet 7/4 {
            \once \override Dots.font-size = 2
            \tweak Y-offset #1.5
            r8  r32
            \set stemRightBeamCount = 1
            e''16
              _(
              -^ \ff
          }


          %106
          \override Stem.details.beamed-lengths = #'(5)
          \set stemLeftBeamCount = 1
          g''32 \mp
          \once \override Score.MetronomeMark.extra-offset = #'(7.5 . 0.5)
          %\tempo \markup {
            %  "(" \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 120)"
            %   }
            f,16. ] \stopTextSpan
              )

}
