sectionNineAchillesPatroclusHector = {
            %107
            \break
            \time 3/8
            \override Stem.details.beamed-lengths = #'(8)
            \tempo \markup {
              \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 120"
              "| unrestrained, but exact"
            }

            \tuplet 6/4 { r32 [
            c''16 \p \<
            \set stemLeftBeamCount = 2
            \set stemRightBeamCount = 3
            g''32  \grace {
              \setGrace #31
              e''
            }
            \set stemLeftBeamCount = 3
            e'
            \grace {
              \setGrace #31

              c''
            }
            <a, a> ]
          }

          %108
          \override Stem.details.beamed-lengths = #'(7)
          \grace {
            \setGrace #33
            g''32
          }\tuplet 6/4 {
            f,32--  [

            \grace {
              \setGrace #24
              e'
            }
            c''  \grace {
              \setGrace #24
              <a, c'>
            }
            e''--

            \grace {
              \setGrace #11
              f,32
            }

            e''-^   \ff
            e''
            c'' ]
          }


          \break
          \grace  {
            \setGrace #24
            c'32

          }
          %109
          \override Stem.details.beamed-lengths = #'(8)
          \tuplet 6/4 {
            g''32  [
            \set stemRightBeamCount = 3
            c'' \mf \>
            \set stemLeftBeamCount = 3
            \set stemRightBeamCount = 2
            a
            \grace {
              \setGrace #24
              c''
            }
            <a, e'>16-- \p \<
            g''32 ]
          }

          %\break

          \grace  {
            \setGrace #24
            a

          }

          %110
          \override Stem.details.beamed-lengths = #'(10)
          \tuplet 7/4 {
            e''32 [  \grace {
              \setGrace #29
              c''32
            }
            <f, e'>32
            e''--  g''-^  \ff
            \grace {
              \setGrace #29
              c''
            } <a c>  e'16 ]
          }



          %\time 2/8
          %111
          \override Stem.details.beamed-lengths = #'(5.5)
          \tuplet 7/4 {
            \setDynOffset #'(0 . -2)
            g''32 [ \pp \<
            c'' g''16 \grace {
              \setGrace #11
              f,32
            }
            c''  a,
            g''-- ]
          }

          %112
          \override Stem.details.beamed-lengths = #'(10.5)
          \grace {
            \setGrace #31
            e''32
          }
          \tuplet 6/4 {
            c' [ \grace {
              \setGrace #29
              c''
            }
            a
            e''
            \grace {
              \setGrace #31
              e''
            }

            a,  \grace {
              \setGrace #31
              e''
            }
            c'16 ]
          }
          \break
          \time 2/8
          %113
          \override Stem.details.beamed-lengths = #'(9)

          \tuplet 6/4 {
            <a, e'>16 [ \grace {
              \setGrace #20
              a32
            }
            g''32-^ \ff \>

            g''32 \grace {
              \setGrace #31
              e''
            }
            c'
            a-- ]
          }

          %114
          \override Stem.details.beamed-lengths = #'(8)
          \grace {
            \once \override Stem.details.beamed-lengths = #'(11)
            \once \stemDown
            e''32
            \once \override Stem.details.beamed-lengths = #'(11)
            \once \stemDown
            a,32
          }
          \tuplet 5/4 {
            e''32 a, \pp
            \setDynOffset #'(0 . -8.5)
            c''16.-^ ] \ff
          }
          \setDynOffset#'(0 . -2)

}
