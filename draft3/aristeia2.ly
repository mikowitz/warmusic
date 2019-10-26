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

setGrace = #(define-music-function (parser location stemLen) (number?)
               #{
                 \once \stemDown
                 \once \override Stem.length = #stemLen
               #})

\score {
  \new PianoStaff <<
    \new Staff {
    \override Staff.Stem.stemlet-length = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #t)
    % \stemDown
  \stemUp

  \override Beam #'damping = #+inf.0

    \stopStaff
    \override Staff.StaffSymbol.line-positions = #'(-11 -9 -7 -2 0 2 7 9 11)
    \override TupletNumber.font-size = #1.5
    \override TupletNumber.extra-offset = #'(0 . 0.5)
    \override TupletBracket.extra-offset = #'(0 . .5)
    \startStaff
    \clef percussion
      \override Staff.TimeSignature.font-size = #4
    \time 3/8

    %1
    \override Rest.font-size = #2.5
%    \override Rest.font-series = #'bold
    \override Score.MetronomeMark.extra-offset = #'(0 . 2)
    \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"8" #1 "= 20"
      "| deliberate, preparatory"
    }
    %\stemDown
    \override Stem.details.beamed-lengths = #'(13)
    f,32-^ [
    %f,32--->  [
    a, a,    \set stemRightBeamCount = 1
    a,

    %2
    \set stemLeftBeamCount = 1
    r16.

%    \once \override Stem.length = #26
\set stemRightBeamCount = 1
    c32

    %3
    \set stemLeftBeamCount = 1
    r16  a,32 a, ]

    \time 3/8

    %4
    a,16. [
    \set stemRightBeamCount = 1
    a,32--

    %5
    \set stemLeftBeamCount = 1
    f,16.
    \set stemRightBeamCount = 1
    \set stemLeftBeamCount = 3
    c32


    %6
    \set stemLeftBeamCount = 1
    r32 f, a,16 ]

    \time 2/8

    \override Stem.details.beamed-lengths = #'(12)
    %7
    r32 [
    \once \override TextSpanner.extra-offset = #'(0 . 3)
    \once \override TextSpanner.bound-details.left.text = "slight accel."
    \once \override TextSpanner.bound-details.right.padding = #7
%    \once \override DynamicText.extra-offset = #'(0 . 3)
    c32-^  \startTextSpan
    c
    \set stemRightBeamCount = 1
    c

    %8
    \set stemLeftBeamCount = 1
    c\marcato f, a,
    \grace {
       \setGrace #23
      a32 (
    }

%    \once \override DynamicText.extra-offset = #'(0 . 2)
    f,32
    )  ]



    \time 2/8

       \override Stem.details.beamed-lengths = #'(8.5)


    %9
     \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"8" #1 "= 30"
     }
     \grace {
       \setGrace #25
       c'32 (
     }
    \tuplet 7/4 {
    r16[ ) \stopTextSpan c'16.-^
 %   --
%   ->
      c32
      \set stemRightBeamCount = 1
      c'
    }

    % 10
      %     \override Stem.details.beamed-lengths = #'(12 12 12 12 12)
  \set stemLeftBeamCount = 1
    r16
    \grace {
      \setGrace #27
      e'32 (
    }
    a, )
    \grace {
      \setGrace #14
      f, (
    }
    c' ) ]

    \break

      % \override Stem.details.beamed-lengths = #'(8 8 9 8 8)

    %11
     \grace {
        \setGrace #16
        a,32 (
    }
    \tuplet 7/4 {

      c'16 ) [ c'32 c'32 a f,
      \set stemRightBeamCount = 1
      e'-^ %->
    }

    % 12
          \grace {
         \setGrace #18
       c32 (
      }
    \tuplet 5/4 {

\set stemLeftBeamCount = #1
\set stemRightBeamCount = #3
      a32 ) c'16.--
      \grace {
        \setGrace #18
        c32 (

      }c'32 ) ]
    }

    \time 2/8

    %13
    r32 [ \grace {
      \setGrace #25
      c' (
    }a, ) \grace {
      \setGrace #14
      f, (
    }
    c' )
    \set stemRightBeamCount = 1
    c'

    %14
    \set stemLeftBeamCount = 1
    r32  \grace {
      \setGrace #16
      a, (
    }
    \once \override TextSpanner.bound-details.left.text = "rit."
%    \once \override TextSpanner.bound-details.left.padding = #-5
\once \override TextSpanner.extra-offset = #'(0 . 4)
    \once \override TextSpanner.bound-details.left.padding = #-5

    \once \override TextSpanner.bound-details.right.padding = #-2
    e' %->
    -^ ) \startTextSpan \grace  {
      \setGrace #14
    f, (
    }
    a-^ ) e' \stopTextSpan ]


    \time 3/8

    % 15
        \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"8" #1 "= 20"
      "| but now restless"
    }
        \override Stem.details.beamed-lengths = #'(12)
    %\tempo 8 = 15
    r32 [ a,16--
    \set stemRightBeamCount = 1
    f,32

    % 16
    \once \set tupletFullLength = ##t
    \tuplet 7/4 {
      \set stemLeftBeamCount = 1
      c32 c'16.
      \set stemRightBeamCount = 1
      a16.
    }

    % 17
    \set stemLeftBeamCount = 1
    r32  \grace {
      \setGrace #27
     % \once \override Stem.length = #25
      e'32 (
    }
%    \once \override Stem.length = #26
    a,16. ) ]

    \time 3/8

    \override Stem.details.beamed-lengths = #'(8.5)
    % 18
    \tuplet 5/4 {
      a,32 [ \grace {
        \setGrace #23
        a (
      }f,16. )
      \set stemRightBeamCount = 1
      e'32--
    }

    % 19

 \once \set tupletFullLength = ##t
%    \set tupletFullLengthNote = ##t
    \tuplet 5/4 {
      \set stemLeftBeamCount = 1
      c'16
      \set stemRightBeamCount = 1
      16.
    }

    % 20
    \once \set tupletFullLength = ##t
%    \once \override TupletBracket.X-extent = #10
    \tuplet 5/4 {
      \set stemLeftBeamCount = 1
      \set stemRightBeamCount = 3
      r32 a8 ]
    }

\break
    \override Stem.details.beamed-lengths = #'(13)
    \time 3/8

    % 21
    \grace {
      \setGrace #16
      a,32 (
    }
    e'16.-^ ) [
    \set stemRightBeamCount = #1
    \set stemLeftBeamCount = #3
    f,32

    % 22
    \set stemLeftBeamCount = #1
    \set stemRightBeamCount = #3
    r32
    \set stemRightBeamCount = #1
    a16.

    % 23
    \set stemLeftBeamCount = #1
    a,16.
    \grace {
      \setGrace #27
      e'32 (
    }
    f,32-- ) ]

    \override Stem.details.beamed-lengths = #'(9.5)
    \time 2/8

    % 24
    \grace {
      \setGrace #23

      %\once \override Stem.length = #23
      a32 (
    }
    \once \set tupletFullLength = ##t
    \tuplet 5/4 {
      a,32 ) [
      f,32
      \set stemRightBeamCount = #1
      e'16.
    }

    % 25
    \once \set tupletFullLength = ##t
    \tuplet 5/4 {
      \set stemLeftBeamCount = #1
      c'32 c16 a16 ]
    }


    \time 2/8

    %26
    \grace {
      \setGrace #16
      a,32 (
    }
        \override Stem.details.beamed-lengths = #'(7.5)
    c'-- ) [
    \grace {
      \setGrace #18
      c (
    }
    e' ) \grace {
      \setGrace #23
      a (
    }c )
    \set stemRightBeamCount = #1
    e'

    %27
    \set stemLeftBeamCount = #1
    a32
    \grace {
      \setGrace #18
      c (
    }e'-^ ) \grace {
      \setGrace #14
      f, (
    }
    \once \override TextSpanner.extra-offset = #'(0 . 2.5)
    \once \override TextSpanner.bound-details.left.text = "molto accel. "
    \once \override TextSpanner.bound-details.right.padding = #-3
    a-^ ) \startTextSpan e' ]

    \time 3/8

    \override Stem.details.beamed-lengths = #'(8.5)
    % 28
    \tuplet 3/2 {
      r16 [
      \set stemLeftBeamCount = #3
      \set stemRightBeamCount = #1
      c'32
    }
    \tuplet 3/2 {
      \set stemLeftBeamCount = #1
      c16
      \set stemRightBeamCount = #1
      \set stemLeftBeamCount = #3
      a32
    }

    %29
    \set stemLeftBeamCount = #1
    c32 \grace {
      \setGrace #25
      %\once \override Stem.length = #25
      c' (
    }
    c )
    \set stemRightBeamCount = #1
    c'16--


    %30
    \grace {
      \setGrace #18
      c32 (
    }
    \set stemLeftBeamCount = #1
    c' ) \grace {
      \setGrace #16
      a, (
    }e'-^ ) c'16 \stopTextSpan ]

  \break
\time 3/8

    %31
        \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"8" #1 "= 20 subito"
      "| restrained"
    }

    r8 \fermata

    %32
        \override Stem.details.beamed-lengths = #'(9)
    r16 [
    c'32
    \set stemRightBeamCount = #1
    c'

    %33
    \set stemLeftBeamCount = #1
    \set stemRightBeamCount = #3
    r32 c'16. ]

    \time 2/8

    %34
    a16. [
    \set stemRightBeamCount = #1
    \set stemLeftBeamCount = #3
    e'32

    %35
    \set stemLeftBeamCount = #1
    r32 a32-- c' c'-^ ]


    \time 2/8

    %36
    \once \override TextSpanner.bound-details.left.text = "accel. "
    \once \override TextSpanner.extra-offset = #'(0 . 2.5)
    \once \override TextSpanner.bound-details.right.padding = #-4.5
    c'16. [ \startTextSpan
    \set stemLeftBeamCount = #3
    \set stemRightBeamCount = #1
    c'32

    %37
    \set stemLeftBeamCount = #1
    c'32 e' a16 ]

    \time 2/8

    \override Stem.details.beamed-lengths = #'(8.25)
    %38
    r32 [ e'16
    \set stemLeftBeamCount = #3
    \set stemRightBeamCount = #1
    c'32--

    %39
    \set stemLeftBeamCount = #1
    r32 a32 e'16 \stopTextSpan ]

    \time 3/8
        \override Stem.details.beamed-lengths = #'(9)


    %40
        \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"8" #1 "= 40"
      "| eager"
    }
    r32 [
    a e' \grace {
      \setGrace #25
%      \once \override Stem.length = #23
      c' (
    }
    \set stemRightBeamCount = #1
    c''---^  )


    %41
    \tuplet 7/4 {
      r8. c'32
    }

    %42
    \tuplet 3/2 {
      r8 a16 ]
    }

    \break

    \time 2/8

    %43
    \grace {
      \setGrace #34
     %\once \override Stem.length = #30
      e'' (
    }
    \once \set tupletFullLength = ##t
        \override Stem.details.beamed-lengths = #'(8.5)
    \tuplet 7/4 {
      e'16. ) [
      a16
      \set stemRightBeamCount = #1
      e'16--
    }

    %44
    \set stemLeftBeamCount = #1
    r16 \grace {
      \setGrace #23
      a32 (
    }
    \tuplet 3/2 {
      \set stemLeftBeamCount = #1
      e''32 ) e'-^  c'  ]
    }

    \time 2/8

    %45
    \tuplet 7/4 {
      r16 [ e''32 a16 c'32
      \set stemRightBeamCount = #1
      e'
    }

    %46
    \tuplet 3/2 {
      \set stemLeftBeamCount = #1
      g''16
      \set stemRightBeamCount = #1
      \set stemLeftBeamCount = #3
      a32 }
    \once \set tupletFullLength = ##t
    \tuplet 3/2 {
      \set stemLeftBeamCount = #1
      \set stemRightBeamCount = #3
      e''32 e'16 ]
    }

    \time 2/8

    %47
        \override Stem.details.beamed-lengths = #'(5)
    r16 [ \tuplet 3/2 { e''16
                        \set stemLeftBeamCount = #3
                        \set stemRightBeamCount = #1
                        a32 }

    %48
    \set stemLeftBeamCount = #1
    e''32-- e'' \grace {
      \setGrace #32
      c'' (
    }
    e'-- ) \grace {
    \setGrace #36
      g'' (
    }
    a-^  ) ]

    \time 2/8

    %49
        \override Stem.details.beamed-lengths = #'(6)
    r32 [ e'
    \set stemRightBeamCount = #1
    c'16

    %50
    \set stemLeftBeamCount = #1
    c''32 a e'' e'' ]

    \time 3/8

\break
    \override Stem.details.beamed-lengths = #'(8.5)
    %51
    \once \set tupletFullLength = ##t
    \tuplet 7/4 {
      \once \override TextSpanner.bound-details.left.text = "accel. "
      \once \override TextSpanner.extra-offset = #'(0 . 2.5)
      \once \override TextSpanner.bound-details.right.padding = #'-1.5
      e''32 [ \startTextSpan c' c'16.
      \set stemRightBeamCount = #1
      e''16--
    }

    %52
    \tuplet 5/4 {
      \set stemLeftBeamCount = #1
      r32 e'' c' \grace {
        \setGrace #27
       % \once \override Stem.length = #25
        e' (
      }
      c' )
      \set stemRightBeamCount = #1
      c'--
    }

    %53
          \grace {
        \setGrace #25
        % \once \override Stem.length = #25
        c'32 (
      }
      \once \set tupletFullLength = ##t
    \tuplet 7/4 {
      \set stemLeftBeamCount = #1
      c' ) a \grace {
        \setGrace #36
%         \once \override Stem.length = #30
        g'' (
      }
      e'16. ) \grace {
        \setGrace #23
        a32 (
      }
      c''16-^  ) ]
    }

    \time 2/8

    \override Stem.details.beamed-lengths = #'(9.25)
    %54
    \grace {
      \setGrace #25
      c' (
    }
    c32 [ ) g'' \grace {

      \setGrace #25
%       \once \override Stem.details.beamed-length = #'(25)
      c' ( \setGrace #34
      e''
    }
    c' ) \grace {
      \setGrace #32
      c'' (
    }
    \set stemRightBeamCount = #1
    \afterGrace
    c' ) ( {
      \setGrace #27
      e' )
    }

    %55
    \tuplet 7/4 {
      \set stemLeftBeamCount = #1
      r16 g''-^  a32 e' c'---^ \stopTextSpan ]
     }

    \time 2/8

    %56
        \override Stem.details.beamed-lengths = #'(6)
        \once \override Score.MetronomeMark.extra-offset = #'(0 . 4)
     \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"8" #1 "= 60"
      "| overeager"
     }
    c'' [
    \grace {
      \setGrace #23
      a (
    }
    g''-- ) e'' \grace {
      \setGrace #25
      c' (
      \setGrace #34
      e''
    }
    \set stemRightBeamCount = #1
    a )

    %57
    \grace {
      \setGrace #32
      c''32 (
    }
    \tuplet 7/4 {
      \set stemLeftBeamCount = #1
      e'16 ) c'16.
      \grace {
        \setGrace #25
        c'32 (
      }
      g''-^  ) a32 ]
    }

    \time 4/8

\break
    \override Stem.details.beamed-lengths = #'(6)
    %58

    r32 [
        \once \override TextSpanner.bound-details.left.text = "poco rit. "
    \once \override TextSpanner.bound-details.right.padding = #-3
    \once \override TextSpanner.bound-details.left.padding = #-3
    \once \override TextSpanner.extra-offset = #'(0 . 2)
    \set stemRightBeamCount = #1
    c''16. \startTextSpan

    %59
    \set stemLeftBeamCount = #1
    r16
    \set stemRightBeamCount = #1
    g''16

    %60
    \set stemLeftBeamCount = #1
    c''16.
    \set stemLeftBeamCount = #3
    \set stemRightBeamCount = #1
    g''32--


    %61
    \set stemLeftBeamCount = #1
    \set stemRightBeamCount = #3
    e''32 c''16 e''32 ]

    \time 3/8

    %62
        \override Stem.details.beamed-lengths = #'(5)
    r16 [ g''32
    \set stemRightBeamCount = #1
    c''32

    %63
    \set stemLeftBeamCount = #1
    g''-- c''
    \set stemRightBeamCount = #1
    g''16

    %64
    \set stemLeftBeamCount = #1
    r32

    c''16.-^ ] \stopTextSpan

    \time 2/8

    %65
        \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"8" #1 "= 40"
      "| victorious"
    }
%    \tempo 8 = 40
 %        \override Stem.details.beamed-lengths = #'(9)
%     e'32 [ a e'
%     \set stemRightBeamCount = #1
%     a
%
%
%     %66
%     \set stemLeftBeamCount = #1
%             \once \override TextSpanner.bound-details.left.text = "poco rit. "
%
%     e'32-- \startTextSpan
%     c' a16 ]
%
%     \time 3/8
%
%     %67
%
%     r32  [
%     c'16->
%     \set stemRightBeamCount = #1
%     e'32
%
%     %68
%     \set stemLeftBeamCount = #1
%     a16 e'32
%     \set stemRightBeamCount = #1
%     a32
%
%     %69
%     \set stemLeftBeamCount = #1
%     r32 e'16. ]
%
%     \time 3/8
%
%     %70
%     r16 [ a32-- e'32
%
%     %71
%     r8
%
%     %72
%     c'32 a16 c'32 \stopTextSpan ]
%
%     \break
%     \time 3/8
%         \override Stem.details.beamed-lengths = #'(8.5)
%
%     %73
%     \tempo "Tempo 1°"
%     r32 [ c'16.->
%
%     %74
%     c'32 e'16.
%
%     %75
%     \tuplet 5/4 {
%       r16 c'16 c'32-- ]
%     }

       \override Stem.details.beamed-lengths = #'(5)
    g''32 [ c'' g''
    \set stemRightBeamCount = #1
    c''


    %66
    \set stemLeftBeamCount = #1


    g''32--
    e'' c''16 ]

    \time 3/8

    %67

    r32  [
    \once \override TextSpanner.extra-offset = #'(0 . 2)
    \once \override TextSpanner.bound-details.left.text = "poco rit. "
    e''16-^\startTextSpan
    \set stemRightBeamCount = #1
    g''32

    %68
    \set stemLeftBeamCount = #1
    c''16 g''32
    \set stemRightBeamCount = #1
    c''32

    %69
    \set stemLeftBeamCount = #1
    r32 g''16. ]

\override Stem.details.beamed-lengths = #'(6)
    \time 3/8

    %70
    r16 [ c''32-- g''32

    %71
    r8

    %72
    e''32 c''16 e''32 \stopTextSpan ]

    \break
    \time 3/8
        \override Stem.details.beamed-lengths = #'(5)

    %73
     \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"8" #1 "= 20"
      "| mournful"
     }
    r32 [ c'16.-^

    %74
    e''32 g''16.

    %75
    \tuplet 5/4 {
      r16 c'16 e''32-- ]
    }

    \time 3/8

\override Stem.details.beamed-lengths = #'(9)
    %76
    \once \set tupletFullLength = ##t
    \tuplet 7/4 {
      r32 [ c'8 r16
    }

    %77
    \tuplet 7/4 {
      r16 c'8-^  r32
    }

    %78
    \once \set tupletFullLength = ##t
    \tuplet 7/4 {
      r8 a16.-^ ]
     }

    \time 2/8

    %79
    r8 \fermata

    \override Stem.details.beamed-lengths = #'(5)
    %80
    r16 [ g''16 ]



    \time 2/8
        \override Stem.details.beamed-lengths = #'(10)
    %81
    \once \set tupletFullLength = ##t
    \tuplet 5/4 {
      e''16 [
      \set stemRightBeamCount = #1
      f,16.-- (
    }

    %82
         \grace {
       \setGrace #27
       e'32 )
     }
     \once \set tupletFullLength = ##t
    \tuplet 7/4 {
    \set stemLeftBeamCount = #1
    \set stemRightBeamCount = #3
     r32 a,8 a16 ]
    }

    \override Stem.details.beamed-lengths = #'(11)
    \time 2/8

    %83
    c'32 [ 16 32

    %84
    \once \set tupletFullLength = ##t
    \tuplet 7/4 {
      r8 c16. ]
    }

\break
    \time 2/8
        \override Stem.details.beamed-lengths = #'(10.5)

    %85
    \once \override TextSpanner.bound-details.left.text = "accel. "
    \once \override TextSpanner.bound-details.right.padding = #'3
    \once \override TextSpanner.extra-offset = #'(0 . 2)
    c'16.-^  [  \startTextSpan
    32--


    %86
    \tuplet 7/4 {
      e'8 r16 c32 ]
    }



    \time 2/8
        \override Stem.details.beamed-lengths = #'(13)
    %87
    \once \set tupletFullLength = ##t
    \tuplet 5/4 {
      r16 [
      c32 c16
    }

    %88
    r16. \grace {
      \setGrace #18
      c32 (
    }
    a ) ]

    \override Stem.details.beamed-lengths = #'(11)

    \time 2/8

    %89
    r16[
    \tuplet 3/2 { e'16 f,32 }

    %90
    \tuplet 5/4 {
      c'16. a,32 a32 ]
    }


    \time 2/8
    %91
    r8

\override Beam #'damping = #+inf.0
    \override Stem.details.beamed-lengths = #'(6)

    %92
    \once \set tupletFullLength = ##t
    \tuplet 3/2 {
    \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"8" #1 "= 30"
      "| gearing up"
    }
      r32 [
      \stopTextSpan
      c''16--  } f,16---^  ]

    \time 3/8

    \override Stem.details.beamed-lengths = #'(13)

    %93
    \once \override TextSpanner.bound-details.left.text = "accel. "
  \once \override TextSpanner.extra-offset = #'(0 . 3.75)
  \once \override TextSpanner.bound-details.right.padding = #'-2
  \once \override TextSpanner.bound-details.left.padding = #'3
    r32[   \startTextSpan
    c-^  a, \grace {
      \setGrace #14
      f,32 (
    }
    e'' )

    %94
    r32 e''16 a,32

    %95
    r16 \grace {
      \setGrace #34
      e''32 (
    }
    f, ) \grace {
      \setGrace #36
      g'' (
    }
    c ) ]


    \break
        \override Stem.details.beamed-lengths = #'(6)
    \time 3/8

    %96
    \once \set tupletFullLength = ##t
    \tuplet 7/4 {
      c32 [ e''16.-^   e''32 a,16
    }

    %97
    \once \set tupletFullLength = ##t
    \tuplet 7/4 {
      f,8--  r32 e''16
    }

    %98
    \grace {
      \setGrace #34
      e''32 (
    }
    \tuplet 7/4 {
      a,32 ) c''16-- g''32 f, a, c'' ]
    }

    \time 4/8

    \override Stem.details.beamed-lengths = #'(5)

    %99
    r16 [ \stopTextSpan
    \once \override Score.MetronomeMark.extra-offset = #'(0 . 5.5)
     \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"8" #1 "= 40"
      "| prepared"
     }
    \grace {
      \setGrace #14
%      \once \override Stem.length = #'20
      f,32 (
    }
    e''-^  ) c ]

    %100
    r8

    %101
    r8

    %102
    \once \set tupletFullLength = ##t
    \tuplet 3/2 { r16 [
                  \once \override TextSpanner.bound-details.left.text = "molto accel. "
                  \once \override TextSpanner.extra-offset = #'(0 . 3)
                  \once \override TextSpanner.bound-details.right.padding = #'-5

                  e''8 ] \startTextSpan }

    \time 2/8
    %103
    \once \set tupletFullLength = ##t
    \tuplet 5/4 {
      r32 [ a,32 e''16.
    }

    %104
    r16 e''32-- c ]

    \time 2/8
    %105
    \once \set tupletFullLength = ##t
    \tuplet 7/4 {
      r8 [ r32 e''16-^
     }


    %106
    g''32 f,16. ] \stopTextSpan

\break
    \override Stem.details.beamed-lengths = #'(7)
    \time 4/8
    %107
        \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"8" #1 "= 60"
      "| unrestrained, but exact"
    }

    \once \set tupletFullLength = ##t
    \tuplet 3/2 { r32 [
                  \set stemRightBeamCount = #1
                  c''16 }
    \tupletUp
    \tuplet 3/2 {
      \set stemLeftBeamCount = #1
      g''32  \grace {
        \setGrace #34
        e'' (
      }
      e' )
      \grace {
        \once \override Stem.details.beamed-lengths = #'(16)
        \once \stemDown
       a, (
       \once \override Stem.details.beamed-lengths = #'(18)
       \once \stemDown
       c''
      }
      \set stemRightBeamCount = #1
      a )
    }

    %108
    \grace {
      \setGrace #36
      g''32 (
    }\tuplet 3/2 {
      \set stemLeftBeamCount = #1
      f,32-- )

      \grace {
        \setGrace #27
        e' (
      }
      c'' ) \grace {
        \setGrace #20
        a, (
        \setGrace #20
        c' }
      \set stemRightBeamCount = #1
      e''-- )
    }
    \grace {
      \setGrace #14
      f,32 (
    }
    \tuplet 3/2 {
      \set stemLeftBeamCount = #1
      e''-^   ) e''
      \set stemRightBeamCount = #1
      c'' (
    }
    \grace  {
      \setGrace #20
      c'32
      \setGrace #20
      g'' )
    }
    %109
    \tuplet 3/2 {
      \set stemLeftBeamCount = #1
      r32 c''
      \set stemRightBeamCount = #1
      a
    }
    \grace {
      \setGrace #20
      a,32 ^(
      \setGrace #20
      c''
    }
    \tuplet 3/2 {
      \set stemLeftBeamCount = #1
      e'16-- )
      \set stemRightBeamCount = #1
      \set stemLeftBeamCount = #3
      g''32 (
    }
    \grace  {
        \setGrace #20
        a
        \setGrace #20
        e'' )
      }

    %110
    \once \set tupletFullLength = ##t
    \tuplet 7/4 {
      \set stemLeftBeamCount = #1
      r32  \grace {
        \setGrace #32
        c''32 (
      }
      e'32  ) \grace {
        \setGrace #14
        f, (
      }
      e''-- ) g''-^  \grace {
        \setGrace #20
        c (
        \setGrace #20
        c''
      } a ) e'16 ]
    }


\break
    \override Stem.details.beamed-lengths = #'(7)
    \time 4/8
    %111
    \tuplet 7/4 {
      g''32 [ c'' g''16 \grace {
        \setGrace #14
        f,32 (
      }
      c'' ) a,
      \set stemRightBeamCount = #1
      g''--
    }

    %112
    \grace {
      \setGrace #34
      e''32 (
    }
    \tuplet 3/2 {
      \set stemLeftBeamCount = #1
      c' ) \grace {
        \setGrace #32
        c'' (
      }
      a )
      \set stemRightBeamCount = #1
      e''
    }
    \grace {
      \setGrace #34
      e'' (
    }
    \once \set tupletFullLength = ##t
    \tuplet 3/2 {
      \set stemLeftBeamCount = #1
      a, ) \grace {
        \setGrace #34
        e'' (
      }
      \set stemRightBeamCount = #1
      c'16 )
    }

    %113
    \grace {
      \setGrace #16
      a,32 (
    }
    \tuplet 3/2 {
      \set stemLeftBeamCount = #1
      e'16 ) \grace {
        \setGrace #23
        a32 (
      }
      \set stemRightBeamCount = #1
      \set stemLeftBeamCount = #3
      g''32-^  )
    }
    \tuplet 3/2 {
      \set stemLeftBeamCount = #1
      e''32 \grace {
        \setGrace #34
        e'' (
      }
      a )
      \set stemRightBeamCount = #1
      e'--
    }

    %114
    \grace {
      \setGrace #20
      e''32 ^(
      \setGrace #20
      a,32
    }
    \once \set tupletFullLength = ##t
    \tuplet 5/4 {
      \set stemLeftBeamCount = #1
      e''32 ) a, c''16.-^ ]
     }

  \break
    \time 3/8
    %115

        \override Stem.details.beamed-lengths = #'(13.5)
     \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"8" #1 "= 20 subito"
      "| inevitable"
     }
    r16 [
    a,32-^
    \set stemRightBeamCount = #1
    32


    %116
    \set stemLeftBeamCount = #1
    f,16 c32
    \set stemRightBeamCount = #1
    f,--

    %117
    \set stemLeftBeamCount = #1
    r16.
    \once \override TextSpanner.bound-details.left.text = "molto rit. "
    \once \override TextSpanner.bound-details.left.padding = #-5
    \once \override TextSpanner.bound-details.right.padding = #-10
    \once \override TextSpanner.extra-offset = #'(0 . 3)
    a,32 \startTextSpan ]

    \time 3/8
    %118
    a,16. [
    \set stemLeftBeamCount = #3
    \set stemRightBeamCount = #1
    32

    %119
    \set stemLeftBeamCount = #1
    a,16-^
    \set stemRightBeamCount = #1
    a,16

    %120
    \set stemLeftBeamCount = #1
    r32 c32 f,16 \stopTextSpan ]

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
