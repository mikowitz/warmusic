sectionThreePatroclus = {
      \break
      \time 1/8

      %31

      \once \override Dots.font-size = 2
      \tweak Y-offset #1.5
      r8
        \!
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
      r16
        [
      c'32
        -.
        \f \>
            \set stemRightBeamCount = 1
c
        -.


      %33

            \set stemLeftBeamCount = 1
r32

             \set stemRightBeamCount = 1
c'16.
         -.

      %\time 2/8

      %34
      \override Stem.details.beamed-lengths = #'(7.5)
            \set stemLeftBeamCount = 1
a16.
        -.

            \set stemRightBeamCount = 1
e'32
        -.

        \p

      %35
      \override Stem.details.beamed-lengths = #'(8.5)
            \set stemLeftBeamCount = 1
r32

      a32
        -.
        --
         \<
       c'
             \set stemRightBeamCount = 1
c'
         -.
         -^

          \ff


      %\time 2/8

      %36
      \once \override TextSpanner.bound-details.left.text = "accel. "
      \once \override TextSpanner.extra-offset = #'(0 . 2.5)
      \once \override TextSpanner.bound-details.right.padding = #-4.5
            \set stemLeftBeamCount = 1
c'16.
        -.
        \startTextSpan
        \>

            \set stemRightBeamCount = 1
c'32
        -.


      %37

            \set stemLeftBeamCount = 1
c'32
        -.

      e'
        -.
            \set stemRightBeamCount = 1
a16
        -.

        \mp

      %\time 2/8

      %38
      \override Stem.details.beamed-lengths = #'(7.5)
            \set stemLeftBeamCount = 1
r32
      e'16
        -.
        \pp

            \set stemRightBeamCount = 1
c'32
        --
        -.

      %39

            \set stemLeftBeamCount = 1
r32
      a32
        -.
        \p
      e'16
        -.
        \stopTextSpan
        ]


}
