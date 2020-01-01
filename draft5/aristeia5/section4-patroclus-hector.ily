sectionFourPatroclusHector = {
      \time 3/8


      %40
      \tempo \markup {
        \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 80"
        "| eager"
      }
      r32 [
      a \mp\< e'
      \grace {
        \setGrace #22
        %      \once \override Stem.length = #23
        c'
      }

      c''-^  ] \ff


      %41
      \setDynOffset #'(0 . -8)
      \override Stem.details.beamed-lengths = #'(8.5)
      \tuplet 7/4 {
        \once \override Dots.font-size = 2
        \tweak Y-offset #1.5
        r8. [ c'32 ] \mf
      }

      %42
      \override Stem.details.beamed-lengths = #'(9.5)
      \tuplet 3/2 {
        \once \override Dots.font-size = 2
        \tweak Y-offset #1.5
        r8 [ a16 ] \p
      }

      %\break

      \break
      %\time 3/8

      %43
      \override Stem.details.beamed-lengths = #'(7.5)
      \grace {
        \setGrace #31
        %\once \override Stem.length = #30
        e''
      }
      \once \set tupletFullLength = ##t
      \tuplet 7/4 {
        \setDynOffset #'(0 . -3)
        e'16.  [ \pp
        a16

        e'16-- ]
      }

      %44
      \override Stem.details.beamed-lengths = #'(8.5)
      % \once \override TupletBracket.bracket-visibility = ##f
      \tuplet 6/4 {
        \once \override Dots.font-size = 2
        \tweak Y-offset #1.5
        r16. [ \grace {
          \setGrace #20
          e''32
        }

        a32

        e'-^  \ff  c'  ]
      }

      %\time 2/8

      %45
      \override Stem.details.beamed-lengths = #'(8)
      \tuplet 7/4 {
        \once \override Dots.font-size = 2
        \tweak Y-offset #1.5
        r16 [
        \set stemLeftBeamCount = 3
        \set stemRightBeamCount = 2

        e''32 \mf \> a16
        \set stemLeftBeamCount = 2
        \set stemRightBeamCount = 3
        c'32
        e' ]
      }

      %46
      \override Stem.details.beamed-lengths = #'(5)
      \tuplet 6/4 {
        g''16 [
        a32
        e''32 e'16 ] \p
      }

      %\time 2/8

      %47
      \tuplet 6/4 {
        \once \override Dots.font-size = 2
        \tweak Y-offset #1.5
        r16. [

        e''16 \p\<
        a32 ] }

        %48
        e''32-- [ e'' \grace {
          \setGrace #29
          c''
        }
        e'--  \grace {
          \setGrace #33
          g''
        }
        a-^  ] \ff

        %\time 2/8

        %49
        \override Stem.details.beamed-lengths = #'(8)
        \setDynOffset #'(0 . -4)
        r32 [ e' \p \<

        c'16 ]

        %50
        \override Stem.details.beamed-lengths = #'(5)
        c''32 [ a e'' \mf \> e'' ]

        %\time 3/8

        \break
        %51
        \once \set tupletFullLength = ##t
        \tuplet 7/4 {
          \once \override TextSpanner.bound-details.left.text = "accel. "
          \once \override TextSpanner.extra-offset = #'(0 . 2.5)
          \once \override TextSpanner.bound-details.right.padding = #'-1.5
          e''32 [ \startTextSpan c' c'16.

          e''16--  ] \mp
        }

        %52
        \override Stem.details.beamed-lengths = #'(10)
        \break
        \time 4/8
        \tuplet 5/4 {
          \setDynOffset #'(0 . -3)
          r32 [ e'' \mp \< c'
          \grace {
            \setGrace #24
            % \once \override Stem.length = #25
            e'
          }
          c'

          c'-- ]
        }

        %53
        \override Stem.details.beamed-lengths = #'(9.5)
        \grace {
          \setGrace #22
          % \once \override Stem.length = #25
          c'32
        }
        \once \set tupletFullLength = ##t
        \tuplet 7/4 {

          c' [ a \grace {
            \setGrace #33
            %         \once \override Stem.length = #30
            g''
          }
          e'16. \grace {
            \setGrace #20
            a32
          }
          c''16-^   ] \ff
        }

        %\time 2/8

        %54
        \override Stem.details.beamed-lengths = #'(10)
        \grace {
          \setGrace #22
          c'
        }
        c32 \mp \< [ g'' \grace {

          \setGrace #22
          \once \override Stem.details.beamed-length = #'(25)
          c' \setGrace #31
          e''
        }
        c'  \grace {
          \setGrace #29
          c''
        }


        c' ]
        \grace {
          \setGrace #24
          e'
        }

        %55
        \tuplet 7/4 {
          \once \override Dots.font-size = 2
          \tweak Y-offset #1.5
          r16 [ g''-^ \ff
          \setDynOffset #'(0 . -8.7)
          a32 \mp e'
          \setDynOffset #'(0 . -8)
          c'-^ \stopTextSpan ]
          \ff
        }

        \noBreak
        \time 3/8

        %56
        \override Stem.details.beamed-lengths = #'(6)
        \once \override Score.MetronomeMark.extra-offset = #'(0 . 4)
        \tempo \markup {
          \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 120"
          "| overeager"
        }
        \setDynOffset #'(0 . -3)
        c'' [ \>
        \grace {
          \setGrace #20
          a
        }
        g''-- e'' \grace {
          \setGrace #22
          c'
          \setGrace #31
          e''
        }

        a  ] \p

        %57
        \override Stem.details.beamed-lengths = #'(9.5)
        \grace {
          \setGrace #29
          c''32
        }
        \tuplet 7/4 {

          e'16 \< [ c'16.
          \grace {
            \setGrace #22
            c'32
          }
          g''-^ \ff a32 ]
        }
}
