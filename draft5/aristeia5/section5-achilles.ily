sectionFiveAchilles = {
        %58
        \override Stem.details.beamed-lengths = #'(7)

        r32 [
        \once \override TextSpanner.bound-details.left.text = "poco rit. "
        \once \override TextSpanner.bound-details.right.padding = #-5
        \once \override TextSpanner.bound-details.left.padding = #-3
        \once \override TextSpanner.extra-offset = #'(0 . 3)

        c''16.]  \startTextSpan

        %59
        \override Stem.details.beamed-lengths = #'(5.5)

        \once \override Dots.font-size = 2
        \tweak Y-offset #1.5
        r16 [

        g''16 ] \p \<

        %60
        %    \break
        %\time 2/8
        c''16. [

        g''32-- ]


        %61
        \override Stem.details.beamed-lengths = #'(6.5)
        e''32 [ c''16 e''32 ] \mf

        %\break
        \break
        %\time 3/8

        %62
        \once \override Dots.font-size = 2
        \tweak Y-offset #1.5
        r16 [ g''32 \mp \<

        c''32 ]

        %63
        \override Stem.details.beamed-lengths = #'(6)
        g''-- [ c''
        g''16 ]

        %64
        \override Stem.details.beamed-lengths = #'(8)
        r32 [

        c''16.-^ ] \stopTextSpan \ff

        \time 2/8

        %65
        \override Stem.details.beamed-lengths = #'(6)
        \once \override Score.MetronomeMark.extra-offset = #'(0 . 3)
        \tempo \markup {
          \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 80"
          "| victorious"
        }

        \once \override TextScript.extra-offset = #'(0 . -4)
        g''32
        _\markup { \italic "non dim." }
        [ c'' g''
        c'' ]


        %66
        \override Stem.details.beamed-lengths = #'(7)

        g''32-- [
        e'' c''16 ]

        \time 3/8

        %67
        \override Stem.details.beamed-lengths = #'(5.5)
        r32  [
        \once \override TextSpanner.extra-offset = #'(0 . 2)
        \once \override TextSpanner.bound-details.left.text = "poco rit. "
        \once \override TextSpanner.bound-details.right.padding = #-2
        e''16-^\startTextSpan \ff \>
        g''32 ]

        %68
        \override Stem.details.beamed-lengths = #'(7.5)
        c''16 [
        g''32
        c''32 ] \mp

        %69
        \override Stem.details.beamed-lengths = #'(5.5)
        r32 [ g''16. ]

        %\break
        %\time 3/8

        %70
        \once \override Dots.font-size = 2
        \tweak Y-offset #1.5
        r16 [ c''32-- \mp
        g''32 ]

        %71
        \once \override Dots.font-size = 2
        \tweak Y-offset #1.5
        r8

        %72
        \override Stem.details.beamed-lengths = #'(6)
        e''32 \< [ c''16 e''32 \stopTextSpan ] \f

}
