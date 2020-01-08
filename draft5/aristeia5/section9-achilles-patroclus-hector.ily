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
                _\(
            }
            \set stemRightBeamCount = 1
            <a, a>
              \)
          }

          %108
          \override Stem.details.beamed-lengths = #'(7)
          \grace {
            \setGrace #33
            g''32
            _(
          }
          \tuplet 6/4 {
            \set stemLeftBeamCount = 1
            f,32--
              )

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
                _(
                _\(
            }

            e''
              \)
              -^   \ff
            e''
            \set stemRightBeamCount = 1
            c''
              )
          }


          \break
          \grace  {
            \setGrace #24
            c'32

          }
          %109
          \override Stem.details.beamed-lengths = #'(8)
          \tuplet 6/4 {
            \set stemLeftBeamCount = 1
            g''32
            \set stemRightBeamCount = 3
            c'' \mf \>
            \set stemLeftBeamCount = 3
            \set stemRightBeamCount = 2
            a
            \grace {
              \setGrace #24
              c''
                _\(
                _(
            }
            <a, e'>16
              \)
              -- \p \<
            \set stemRightBeamCount = 1
            g''32
              )
          }

          %\break

          \grace  {
            \setGrace #24
            a

          }

          %110
          \override Stem.details.beamed-lengths = #'(10)
          \tuplet 7/4 {
            \set stemLeftBeamCount = 1
            e''32  \grace {
              \setGrace #29
              c''32
                _\(
                 _(
            }
            <f, e'>32
              \)
            e''--
            g''
              )
              -^  \ff
            \grace {
              \setGrace #29
              c''
                _\(
            }
            <a c>
              \)
            \set stemRightBeamCount = 1
            e'16
          }



          %\time 2/8
          %111
          \override Stem.details.beamed-lengths = #'(5.5)
          \tuplet 7/4 {
            \setDynOffset #'(0 . -2)
            \set stemLeftBeamCount = 1
            g''32  \pp \<
            c'' g''16 \grace {
              \setGrace #11
              f,32
                _\(
                _(
            }
            c''
              \)
            a,
            \set stemRightBeamCount = 1
            g''--
              )
          }

          %112
          \override Stem.details.beamed-lengths = #'(10.5)
          \grace {
            \setGrace #31
            e''32
          }
          \tuplet 6/4 {
            \set stemLeftBeamCount = 1
            c' \grace {
              \setGrace #29
              c''
            }
            a
            e''
            \grace {
              \setGrace #31
              e''
                _(
            }

            a,
              )
            \grace {
              \setGrace #31
              e''
            }
            \set stemRightBeamCount = 1
            c'16
          }
          \break
          \time 2/8
          %113
          \override Stem.details.beamed-lengths = #'(9)

          \tuplet 6/4 {
            \set stemLeftBeamCount = 1
            <a, e'>16  \grace {
              \setGrace #20
              a32
            }
            g''32-^ \ff \>

            g''32 \grace {
              \setGrace #31
              e''
            }
            c'
            \set stemRightBeamCount = 1a--
          }

          %114
          \override Stem.details.beamed-lengths = #'(8)
          \grace {
            \once \override Stem.details.beamed-lengths = #'(11)
            \once \stemDown
            e''32
              _(
            \once \override Stem.details.beamed-lengths = #'(11)
            \once \stemDown
            a,32
          }
          \tuplet 5/4 {
            \set stemLeftBeamCount = 1
            e''32 a, \pp
            \setDynOffset #'(0 . -8.5)
            c''16.
              )
              -^ ] \ff
          }
          \setDynOffset#'(0 . -2)

}
