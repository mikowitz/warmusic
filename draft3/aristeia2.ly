\version "2.19.83"
\language "english"

\include "aristeia-dyn.ly"

#(set-global-staff-size 18)
#(set! paper-alist (cons '("my size" . (cons (* 12 in) (* 9 in))) paper-alist))
\paper {
  #(set-paper-size "my size")
  ragged-last-bottom = ##t
  % line-width = 7.5\in
  left-margin = 0.5\in
  bottom-margin = 1.25\in
  top-margin = 1.25\in
  tagline =##f
  indent = 0
  ragged-right = ##f
  system-system-spacing.minimum-distance = #50
}

setGrace = {
  \once \stemDown
  \once \override Stem.length = #20
}

\score {
  \new PianoStaff <<
    \new Staff {
    \override Staff.Stem.stemlet-length = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #t)
    % \stemDown
  \stemUp
%     \override Beam.damping = #10
   \override Stem.details.beamed-lengths = #'(12 12 12 12 12)
    \stopStaff
    \override Staff.StaffSymbol.line-positions = #'(-11 -9 -7 -2 0 2 7 9 11)
    \startStaff
    \clef percussion
    \time 3/8

    %1
    \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"8" #1 "= 15"
      "| slow, deliberate, preparatory"
    }
    %\stemDown
    f,32--->  [ a, a,    a, ]

    %2
    \once \override Dots.extra-offset = #'(0 . 2.3)
    \once \override Rest.extra-offset = #'(0 . 2.3)
    r16. [

%    \once \override Stem.length = #26
    c32 ]

    %3
    \once \override Rest.extra-offset = #'(0 . 2.3)
    r16 [ a,32 a, ]

    \time 3/8

    %4
    a,16. [ a,32-- ]

    %5
    f,16. c32


    %6
    r32 f, a,16

    \time 2/8

    %7
    r32
    \once \override TextSpanner.bound-details.left.text = "slight accel."
    \once \override TextSpanner.bound-details.right.padding = #5
    \once \override DynamicText.extra-offset = #'(0 . 3)
    c32->  [  \startTextSpan
    c c

    %8
    c-- f, a,
    \grace {
      \once \override Stem.length = #25
      \once \stemDown a32 (
    }
    \afterGrace

%    \once \override DynamicText.extra-offset = #'(0 . 2)
    f,32
    ) _( ] {
      \once \override Stem.length = #25
      \once \stemDown
      c'32 )
    }


    \time 2/8

    %9
    \tempo 8 = 20
    \tuplet 7/4 {
      r16 \stopTextSpan c'16.->--  c32 c'
    }

    % 10
    r16
    \grace {
      \setGrace
      e'32 (
    }
    a, )
    \grace {
      \setGrace
      f, (
    }
    c' )

    \break

    %11
     \grace {
        \setGrace
        a,32 (
    }
    \tuplet 7/4 {
     
      c'16 ) c'32 c'32 a f, e'->
    }

    % 12
          \grace {
         \setGrace
       c32 (
      }
    \tuplet 5/4 {

      a32 ) c'16.--
      \grace {
        \setGrace
        c32 (

      }c'32 )
    }

    \time 2/8

    %13
    r32 \grace {
      \setGrace
      c' ( 
    }a, ) \grace {
      \setGrace
      f, ( 
    }
    c' ) c'

    %14
    r32 \grace {
      \setGrace
      a, (
    }
    \once \override TextSpanner.bound-details.left.text = "slight rit."
%    \once \override TextSpanner.bound-details.left.padding = #-5
    \once \override TextSpanner.bound-details.right.padding = #-2
    e'-> ) \startTextSpan \grace  {
      \setGrace
    f, ( 
    }
    a-> ) e' \stopTextSpan


    \time 3/8

    % 15
        \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"8" #1 "= 15"
      "| but now restless"
    }
    %\tempo 8 = 15
    r32 a,16-- f,32

    % 16
    \tuplet 7/4 {
      c32 c'16. a16.
    }

    % 17
    r32 \grace {
      \setGrace
      e'32 ( 
    }
    \once \override Stem.length = #26
    a,16. )

    \time 3/8

    % 18
    \tuplet 5/4 {
      a,32 \grace {
        \setGrace
        a ( 
      }f,16. ) e'32--
    }

    % 19
    \tuplet 5/4 {
      c'16 16.
    }

    % 20
    \tuplet 5/4 {
      r32 [ a8 ]
    }

\break
    \time 3/8

    % 21
    \grace a,32 ( e'16.-> ) f,32

    % 22
    r32 a16.

    % 23
    a,16. 
    \grace {
      \once \stemDown
      e'32 ( 
    }
    f,32-- )

    \time 2/8

    % 24
    \grace a32 ( \tuplet 5/4 {
      a,32 ) f,32 e'16.
    }

    % 25
    \tuplet 5/4 {
      c'32 c16 a16
    }


    \time 2/8

    %26
    \grace a,32 ( c'-- ) \grace c ( e' ) \grace a ( c ) e'

    %27
    a32 \grace c ( e'-> ) \grace f, (
    \once \override TextSpanner.bound-details.left.text = "molto accel. "
    a-> ) \startTextSpan e'

    \time 3/8

    % 28
    \tuplet 3/2 { r16 c'32 } \tuplet 3/2 { c16 a32 }

    %29
    c32 \grace c' ( c ) c'16--


    %30
    \grace c32 ( c' ) \grace a, ( e'-> ) c'16 \stopTextSpan

  \break
\time 3/8

    %31
    \tempo "Tempo 1°"
    r8 \fermata

    %32
    r16 c'32 c'

    %33
    r32 c'16.

    \time 2/8

    %34
    a16. e'32

    %35
    r32 a32-- c' c'->


    \time 2/8

    %36
    c'16. ^\markup { "accel." } c'32

    %37
    c'32 e' a16

    \time 2/8

    %38
    r32 e'16 c'32--

    %39
    r32 a32 e'16

    \time 3/8

    %40
    \tempo 8 = 30
    r32 a e' \grace c' ( c''->--  )


    %41
    \tuplet 7/4 {
      r8. c'32
    }

    %42
    \tuplet 3/2 {
      r8 a16
    }

    \break

    \time 2/8

    %43
    \grace e'' ( \tuplet 7/4 {
      e'16. ) a16 e'16--
    }

    %44
    r16 \grace a32 ( \tuplet 3/2 { e''32 ) e'->  c' }

    \time 2/8

    %45
    \tuplet 7/4 {
      r16 e''32 a16 c'32 e'
    }

    %46
    \tuplet 3/2 { g''16 a32 } \tuplet 3/2 { e''32 e'16 }

    \time 2/8

    %47
    r16 \tuplet 3/2 { e''16 a32 }

    %48
    e''32-- e'' \grace c'' ( e'-- ) \grace g'' ( a->  )

    \time 2/8

    %49
    r32 e' c'16

    %50
    c''32 a e'' e''

    \time 3/8

\break
    %51
    \tuplet 7/4 {
      e''32 ^\markup { "accel." } c' c'16. e''16--
    }

    %52
    \tuplet 5/4 {
      r32 e'' c' \grace e' ( c' ) c'--
    }

    %53
    \tuplet 7/4 {
      \grace c'32 ( c' ) a \grace g'' ( e'16. ) \grace a32 ( c''16->  )
    }

    \time 2/8

    %54
    \grace c' ( c32 [ ) g'' \grace { c' ( e'' } c' ) \grace c'' ( \afterGrace c' ) ] ( { e' ) }

    %55
    \tuplet 7/4 {
      r16 g''->  a32 e' c'->--
     }

    \time 2/8

    %56
    \tempo "e = 40-50"
    c'' [
    \grace a ( g''-- ) e'' \grace { c' ( e'' } a ) ]

    %57
    \grace c''32 ( \tuplet 7/4 {
      e'16 ) c'16. \grace c'32 ( g''->  ) a32
    }

    \time 4/8

\break
    %58
    \tempo "subito Tempo 1°"
    r32 c''16.

    %59
    r16 g''16

    %60
    c''16. g''32--


    %61
    e''32 c''16 e''32

    \time 3/8

    %62
    r16 g''32 c''32

    %63
    g''-- c'' g''16

    %64
    r32 c''16.->

    \time 2/8

    %65
    e'32 a e' a


    %66
    e'32-- c' a16

    \time 3/8

    %67
    r32 c'16->  ^\markup { "poco rit." } e'32

    %68
    a16 e'32 a32

    %69
    r32 e'16.

    \time 3/8

    %70
    r16 a32-- ^\markup { "poco accel." } e'32

    %71
    r8

    %72
    c'32 a16 c'32

    \break 
    \time 3/8

    %73
    \tempo "Tempo 1°"
    r32 c'16.->

    %74
    c'32 e'16.

    %75
    \tuplet 5/4 {
      r16 c'16 c'32--
    }

    \time 3/8

    %76
    \tuplet 7/4 {
      r32 c'8 r16
    }

    %77
    \tuplet 7/4 {
      r16 c'8->  r32
    }

    %78
    \tuplet 7/4 {
      r8 a16.->
     }

    \time 2/8

    %79
    r8 \fermata

    %80
    r16 g''16



    \time 2/8
    %81
    \tuplet 5/4 {
      e''16 \afterGrace f,16.-- ( { e'32 )}
    }

    %82
    \tuplet 7/4 {
      r32 a,8 a16
    }

    \time 2/8

    %83
    c'32 16 32

    %84
    \tuplet 7/4 {
      r8 c16.
    }

\break
    \time 2/8

    %85
    c'16.->  32--


    %86
    \tuplet 7/4 {
      e'8 r16 c32
    }

    \time 2/8
    %87
    \tuplet 5/4 {
      r16 c32 c16
    }

    %88
    r16. \grace c32 ( a )

    \time 2/8

    %89
    r16 \tuplet 3/2 { e'16 f,32 }

    %90
    \tuplet 5/4 {
      c'16. a,32 a32
    }


    \time 2/8
    %91
    r8

    %92
    \tuplet 3/2 { r32 [ c''16--  } f,16->--  ]

    \time 3/8

    %93
    r32 c->  ^\markup { "accel" } a, \grace f,32 ( e'' )

    %94
    r32 e''16 a,32

    %95
    r16 \grace e''32 ( f, ) \grace g'' ( c )


    \break
    \time 3/8

    %96
    \tuplet 7/4 {
      c32 e''16.->  e''32 a,16
    }

    %97
    \tuplet 7/4 {
      f,8-- [ r32 e''16 ]
    }

    %98
    \grace e''32 ( \tuplet 7/4 {
      a,32 ) c''16-- g''32 f, a, c''
    }

    \time 4/8

    %99
    r16
    \tempo 8 = 30
    \grace f,32 (
    e''->  ) c

    %100
    r8

    %101
    r8

    %102
    \tuplet 3/2 { r16 e''8 }

    \time 2/8
    %103
    \tuplet 5/4 {
      r32 a,32 e''16.
    }

    %104
    r16 e''32-- c

    \time 2/8
    %105
    \tuplet 7/4 {
      r8 r32 e''16->
     }


    %106
    g''32 f,16.

\break
    \time 4/8
    %107
    \tempo "Tempo 1°"
    \tuplet 3/2 { r32 c''16 }
    \tuplet 3/2 {
      g''32 [ \grace e'' ( e' )
      \grace {
       \setGrace
       a, ( \setGrace c''
      }
      a ) ]
    }

    %108
    \grace {
      \setGrace
      g''32 (
    }\tuplet 3/2 {
      f,32-- ) [
      ^\markup { "molto accel." }
      \grace e' ( c'' ) \grace { a, ( c' } e''-- ) ]
    }
    \grace f,32 ( \tuplet 3/2 {
      e''->  [ ) e'' \afterGrace c'' ] { c'32 g'' }
    }

    %109
    \tuplet 3/2 {
      r32 c'' a
    }
    \grace { a,32 ( c'' }
    \tuplet 3/2 {
      e'16-- ) \afterGrace g''32 ( { a e'' ) }
    }

    %110
    \tuplet 7/4 {
      r32 [ \grace c''32 ( e'32  ) \grace f, ( e''-- ) g''->  \grace { c ( c'' } a ) e'16 ]
    }


\break
    \time 4/8
    %111
    \tempo "e = 60+"
    \tuplet 7/4 {
      g''32 c'' g''16 \grace f,32 ( c'' ) a, g''--
    }

    %112
    \grace e''32 ( \tuplet 3/2 {
      c' ) \grace c'' ( a ) e''
    }
    \grace e'' ( \tuplet 3/2 {
      a, ) \grace e'' ( c'16 )
    }

    %113
    \grace a,32 ( \tuplet 3/2 {
      e'16 ) \grace a32 ( g''32->  )
    }
    \tuplet 3/2 {
      e''32 \grace e'' ( a ) e'--
    }

    %114
    \grace { e''32 ^( a,32 } \tuplet 5/4 {
      e''32 ) a, c''16.->
     }

  \break
    \time 3/8
    %115
    \tempo "subito Tempo 1°"
    r16 a,32->  32


    %116
    f,16 c32 f,--

    %117
    r16. a,32 ^\markup { "molto rit." }

    \time 3/8
    %118
    a,16. 32

    %119
    a,16->  a,16

    %120
    r32 c32 f,16

    \bar "|."
  }
  \aristeiaDynamics
  >>
  \layout {

    \context {
      \Voice
      \override TupletNumber.text = #tuplet-number::calc-fraction-text
      \override TupletBracket.breakable = ##t
      \remove "Forbid_line_break_engraver"
      \remove "Tuplet_bracket_engraver"
      \override Beam.breakable = ##t
      \override Glissando.breakable = ##t
    }

  }
}
