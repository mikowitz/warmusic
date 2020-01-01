sectionTenAchilles = {
          \time 3/8
          %115
          \override Stem.details.beamed-lengths = #'(14)
          \tempo \markup {
            \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 40" \italic "subito"
            "| inevitable"
          }
          \once \override Dots.font-size = 2
          \tweak Y-offset #1.5
          r16 [
          a,32-^ \ff \>
          32 ]


          %116
          \override Stem.details.beamed-lengths = #'(14.5)
          f,16 [ c32
          f,-- ] \pp

          %117
          \override Stem.details.beamed-lengths = #'(14)
          \once \override Dots.font-size = 2
          \tweak Y-offset #1.5
          r16. [
          \once \override TextSpanner.bound-details.left.text = "molto rit. "
          \once \override TextSpanner.bound-details.left.padding = #-5
          %\once \override TextSpanner.bound-details.right.padding = #-5
          \once \override TextSpanner.extra-offset = #'(0 . 3)
          a,32\< \startTextSpan ]

          \time 3/8
          %118
          a,16. [
          32 ]

          %119
          a,16-^ [ \ff
          \setDynOffset #'(0 . -3.5)
          c16 ] \mf

          %120
          \override Stem.details.beamed-lengths = #'(13)
          \setDynOffset #'(0 . -4.2)
          r32 [ a,32 \mp
          \setDynOffset #'(0 . -3.7)
          \once \override Score.MetronomeMark.extra-offset = #'(2.5 . 0.5)
          \tempo \markup {
            "(" \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 20)"
          }
          f,16 \pp \stopTextSpan ]

          \bar "|."
}
