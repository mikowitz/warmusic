sectionThreePatroclus = {
      \break
      \time 1/8

      %31

      \once \override Dots.font-size = 2
      \tweak Y-offset #1.5
      r8
      ^\tweak font-size #3
      ^\tweak Y-offset #6.5
      ^\fermata

      \time 4/8
      %32
      \override Stem.details.beamed-lengths = #'(8.5)
      \tempo \markup {
        \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 40" \italic "subito"
        "| restrained"
      }
      \once \override Dots.font-size = 2
      \tweak Y-offset #1.5
      r16 [
      c'32 \ff

      c' ]

      %33

      r32 [ c'16. ] \mf \>

      %\time 2/8

      %34
      \override Stem.details.beamed-lengths = #'(7.5)
      a16. [

      e'32 ] \p

      %35
      \override Stem.details.beamed-lengths = #'(8.5)
      r32 [ a32-- \< c' c'-^ ] \ff


      %\time 2/8

      %36
      \once \override TextSpanner.bound-details.left.text = "accel. "
      \once \override TextSpanner.extra-offset = #'(0 . 2.5)
      \once \override TextSpanner.bound-details.right.padding = #-4.5
      c'16. [ \startTextSpan \>

      c'32 ]

      %37

      c'32 [ e' a16 ] \mp

      %\time 2/8

      %38
      \override Stem.details.beamed-lengths = #'(7.5)
      r32 [ e'16 \pp

      c'32-- ]

      %39

      r32 [ a32 \p e'16 \stopTextSpan ]


}
