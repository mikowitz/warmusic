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
  \override TupletBracket #'damping = #+inf.0

    \stopStaff
    \override Staff.StaffSymbol.line-positions = #'(-11 -9 -7 -2 0 2 7 9 11)
    \override TupletNumber.font-size = #1.5
    \override TupletNumber.extra-offset = #'(0 . 0.5)
    \override TupletBracket.extra-offset = #'(0 . .5)
    \override TupletNumber.text = #tuplet-number::calc-denominator-text
    \override TupletBracket.bracket-visibility = ##t
     \set tupletFullLength = ##t
    \startStaff
    \clef percussion
      \override Staff.TimeSignature.font-size = #4
    \time 3/8
  \set strictBeatBeaming = ##t
    %1
    \override Rest.font-size = #2.5
%    \override Rest.font-series = #'bold
    \override Score.MetronomeMark.extra-offset = #'(0 . 2)
    \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 40"
      "| deliberate, preparatory"
    }
    %\stemDown
    f,32-^ [
    %f,32--->  [
    a, a,
    a, ]

    %2
    r16. [

%    \once \override Stem.length = #26

    c32 ]

    %3
    r16  [ a,32 a, ]

   % \time 3/8

    %4
    a,16. [

    a,32-- ]

    %5

    f,16. [

    c32 ]


    %6

    r32[  f, a,16 ]

    \time 2/8

    %7
    r32 [
    \once \override TextSpanner.extra-offset = #'(0 . 3)
    \once \override TextSpanner.bound-details.left.text = "slight accel."
    \once \override TextSpanner.bound-details.right.padding = #7
%    \once \override DynamicText.extra-offset = #'(0 . 3)
    c32-^  \startTextSpan
    c

    c ]

    %8
    c [ f, a,
    \grace {
       \setGrace #23
      a32
    }

%    \once \override DynamicText.extra-offset = #'(0 . 2)
    f,32
     ]



    %\time 2/8



    %9
     \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 60"
     }
     \grace {
       \setGrace #25
       c'32
     }
    \tuplet 7/4 {
    r16[  \stopTextSpan c'16.-^
 %   --
%   ->
      c32

      c' ]
    }

    % 10

    r16 [
    \grace {
      \setGrace #27
      e'32
    }
    a,
    \grace {
      \setGrace #14
      f,
    }
    c'  ]

    \break

\time 4/8
    %11
     \grace {
        \setGrace #16
        a,32
    }
    \tuplet 7/4 {

      c'16  [ c'32 c'32 a f,

      e'-^ ] %->
    }

    % 12
          \grace {
         \setGrace #18
       c32
      }
    \tuplet 5/4 {

      a32  [ c'16.--
      \grace {
        \setGrace #18
        c32

      }c'32  ]
    }

    %\time 2/8

    %13
    r32 [ \grace {
      \setGrace #25
      c'
    }a,  \grace {
      \setGrace #14
      f,
    }
    c'

    c' ]

    %14

    r32 [  \grace {
      \setGrace #16
      a,
    }
    \once \override TextSpanner.bound-details.left.text = "rit."
\once \override TextSpanner.extra-offset = #'(0 . 4)
    \once \override TextSpanner.bound-details.left.padding = #-5

    \once \override TextSpanner.bound-details.right.padding = #-2
    e' %->
    -^ \startTextSpan \grace  {
      \setGrace #14
    f,
    }
    a-^ e' \stopTextSpan ]


    \time 3/8

    % 15
        \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 40"
      "| but now restless"
    }
    %\tempo 8 = 15
    r32 [ a,16--

    f,32 ]

    % 16
    \tuplet 7/4 {

      c32 [ c'16.

      a16. ]
    }

    % 17

    r32  [ \grace {
      \setGrace #27

      e'32
    }
    a,16.  ]

    %\time 3/8


    % 18
    \tuplet 5/4 {
      a,32 [ \grace {
        \setGrace #23
        a
      }f,16.

      e'32-- ]
    }

    % 19


%    \set tupletFullLengthNote = ##t
    \tuplet 5/4 {

      c'16 [

      c'16. ]
    }

    % 20
    \tuplet 5/4 {
      r32 [ a8 ]
    }

\break
    \time 3/8

    % 21
    \grace {
      \setGrace #16
      a,32
    }
    e'16.-^  [
    f,32 ]

    % 22

    r32 [

    a16. ]

    % 23

    a,16. [
    \grace {
      \setGrace #27
      e'32
    }
    f,32--  ]

    \time 4/8

    % 24
    \grace {
      \setGrace #23

      %\once \override Stem.length = #23
      a32
    }

    \tuplet 5/4 {
      a,32  [
      f,32

      e'16. ]
    }

    % 25
    \tuplet 5/4 {

      c'32 [ c16 a16 ]
    }


    %\time 2/8

    %26
    \grace {
      \setGrace #16
      a,32
    }
    c'--  [
    \grace {
      \setGrace #18
      c
    }
    e'  \grace {
      \setGrace #23
      a
    }c
    e' ]

    %27

    a32 [
    \grace {
      \setGrace #18
      c
    }e'-^  \grace {
      \setGrace #14
      f,
    }
    \once \override TextSpanner.extra-offset = #'(0 . 2.5)
    \once \override TextSpanner.bound-details.left.text = "molto accel. "
    \once \override TextSpanner.bound-details.right.padding = 0
    a-^  \startTextSpan e' ]

    \time 3/8

    % 28
    \tuplet 6/4 {
      r16 [
      c'32

      c16

      a32 ]
    }

    %29
    c32  [ \grace {
      \setGrace #25
      %\once \override Stem.length = #25
      c'
    }
    c

    c'16-- ]

    %30
    \grace {
      \setGrace #18
      c32
    }

    c'  [ \grace {
      \setGrace #16
      a,
    }e'-^  c'16 \stopTextSpan ]

  \break
\time 1/8

    %31


    r8 \fermata

\time 4/8
    %32
                \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 40" \italic "subito"
      "| restrained"
    }
    r16 [
    c'32

    c' ]

    %33

    r32 [ c'16. ]

    %\time 2/8

    %34
    a16. [

    e'32 ]

    %35

    r32 [ a32-- c' c'-^ ]


    %\time 2/8

    %36
    \once \override TextSpanner.bound-details.left.text = "accel. "
    \once \override TextSpanner.extra-offset = #'(0 . 2.5)
    \once \override TextSpanner.bound-details.right.padding = #-4.5
    c'16. [ \startTextSpan

    c'32 ]

    %37

    c'32 [ e' a16 ]

    %\time 2/8

    %38
    r32 [ e'16

    c'32-- ]

    %39

    r32 [ a32 e'16 \stopTextSpan ]

   % \break
    \time 3/8


    %40
        \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 80"
      "| eager"
    }
    r32 [
    a e' \grace {
      \setGrace #25
%      \once \override Stem.length = #23
      c'
    }

    c''---^  ]


    %41
    \tuplet 7/4 {
      r8. [ c'32 ]
    }

    %42
    \tuplet 3/2 {
      r8 [ a16 ]
    }

    %\break

    \break
    %\time 3/8

    %43
    \grace {
      \setGrace #34
     %\once \override Stem.length = #30
      e''
    }
    \once \set tupletFullLength = ##t
    \tuplet 7/4 {
      e'16.  [
      a16

      e'16-- ]
    }

    %44
   % \once \override TupletBracket.bracket-visibility = ##f
    \tuplet 6/4 {
    r16. [ \grace {
      \setGrace #23
      e''32
    }

      a32

      e'-^  c'  ]
    }

    %\time 2/8

    %45
    \tuplet 7/4 {
      r16 [ e''32 a16 c'32
      e' ]
    }

    %46
    \tuplet 6/4 {
      g''16 [
      a32
      e''32 e'16 ]
    }

    %\time 2/8

    %47
    \tuplet 6/4 {
    r16. [

    e''16
                        a32 ] }

    %48
    e''32-- [ e'' \grace {
      \setGrace #32
      c''
    }
    e'--  \grace {
    \setGrace #36
      g''
    }
    a-^  ]

    %\time 2/8

    %49
    r32 [ e'

    c'16 ]

    %50

    c''32 [ a e'' e'' ]

    %\time 3/8

\break
    %51
    \once \set tupletFullLength = ##t
    \tuplet 7/4 {
      \once \override TextSpanner.bound-details.left.text = "accel. "
      \once \override TextSpanner.extra-offset = #'(0 . 2.5)
      \once \override TextSpanner.bound-details.right.padding = #'-1.5
      e''32 [ \startTextSpan c' c'16.

      e''16--  ]
    }

    %52

    \break
    \time 4/8
    \tuplet 5/4 {

      r32 [ e'' c' \grace {
        \setGrace #27
       % \once \override Stem.length = #25
        e'
      }
      c'

      c'-- ]
    }

    %53
          \grace {
        \setGrace #25
        % \once \override Stem.length = #25
        c'32
      }
      \once \set tupletFullLength = ##t
    \tuplet 7/4 {

      c' [ a \grace {
        \setGrace #36
%         \once \override Stem.length = #30
        g''
      }
      e'16. \grace {
        \setGrace #23
        a32
      }
      c''16-^   ]
    }

    %\time 2/8

    %54
    \grace {
      \setGrace #25
      c'
    }
    c32 [ g'' \grace {

      \setGrace #25
      \once \override Stem.details.beamed-length = #'(25)
      c' \setGrace #34
      e''
    }
    c'  \grace {
      \setGrace #32
      c''
    }


    c' ]
    \grace {
      \setGrace #27
      e'
    }

    %55
    \tuplet 7/4 {
      r16 [ g''-^  a32 e' c'---^ \stopTextSpan ]
     }

    \noBreak
    \time 3/8

    %56
        \once \override Score.MetronomeMark.extra-offset = #'(0 . 4)
     \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 120"
      "| overeager"
     }
    c'' [
    \grace {
      \setGrace #23
      a
    }
    g''-- e'' \grace {
      \setGrace #25
      c'
      \setGrace #34
      e''
    }

    a  ]

    %57
    \grace {
      \setGrace #32
      c''32
    }
    \tuplet 7/4 {

      e'16 [ c'16.
      \grace {
        \setGrace #25
        c'32
      }
      g''-^  a32 ]
    }

    %\time 4/8

%\break
    %58

    r32 [
        \once \override TextSpanner.bound-details.left.text = "poco rit. "
    \once \override TextSpanner.bound-details.right.padding = #-3
    \once \override TextSpanner.bound-details.left.padding = #-3
    \once \override TextSpanner.extra-offset = #'(0 . 2)

    c''16.]  \startTextSpan

    %59

    r16 [

    g''16 ]

    %60
%    \break
%\time 2/8
    c''16. [

    g''32-- ]


    %61

    e''32 [ c''16 e''32 ]

    %\break
    \break
    %\time 3/8

    %62
    r16 [ g''32

    c''32 ]

    %63

    g''-- [ c''
    g''16 ]

    %64
    r32 [

    c''16.-^ ] \stopTextSpan

    \time 2/8

    %65
        \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 80"
      "| victorious"
    }
%    \tempo 8 = 40
%     e'32 [ a e'
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

    g''32
    _\markup { \italic "non dim." }
    [ c'' g''
    c'' ]


    %66


    g''32-- [
    e'' c''16 ]

    \time 3/8

    %67

    r32  [
    \once \override TextSpanner.extra-offset = #'(0 . 2)
    \once \override TextSpanner.bound-details.left.text = "poco rit. "
    e''16-^\startTextSpan
    g''32 ]

    %68
    c''16 [
    g''32
    c''32 ]

    %69
    r32 [ g''16. ]

    %\break
    %\time 3/8

    %70
    r16 [ c''32-- g''32 ]

    %71
    r8

    %72
    e''32 [ c''16 e''32 \stopTextSpan ]

    %\break
   % \break
    %\time 3/8

    %73
     \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 40"
      "| mournful"
     }
    r32 [ c'16.-^ ]

    %74
    e''32 [
    g''16. ]

    %75
    \tuplet 5/4 {
      r16 [ c'16 e''32-- ]
    }

    \break
    %\time 3/8

    %76
    \once \set tupletFullLength = ##t
    \tuplet 7/4 {
      r32 [ c'8
      r16 ]
    }

    %77
    \tuplet 7/4 {
      r16 [ c'8-^  r32 ]
    }

    %78
    \once \set tupletFullLength = ##t
    \tuplet 7/4 {
      r8 [ a16.-^ ]
     }

    \time 1/8

    %79
    r8 \fermata
%\break
    \time 3/8

    %80
    r16 [ g''16 ]



  %  \time 2/8
    %81
    \once \set tupletFullLength = ##t
    \tuplet 5/4 {
      e''16 [
      f,16.-- ]
    }

    %82
         \grace {
       \setGrace #27
       e'32
     }
     \once \set tupletFullLength = ##t
    \tuplet 7/4 {
     r32 [  a,8 a16 ]
    }


    %\break
    \time 2/8

    %83
    c'32 [ 16 32 ]

    %84
    \once \set tupletFullLength = ##t
    \tuplet 7/4 {
      r8 [ c16. ]
    }

\break
    \time 4/8

    %85
    \once \override TextSpanner.bound-details.left.text = "accel. "
    \once \override TextSpanner.bound-details.right.padding = #'3
    \once \override TextSpanner.extra-offset = #'(0 . 2)
    c'16.-^  [  \startTextSpan
    32-- ]


    %86
    \tuplet 7/4 {
       e'8 [ r16 c32 ]
    }



    %\time 2/8
    %87
    \once \set tupletFullLength = ##t
    \tuplet 5/4 {
      r16 [
      c32
      c16 ]
    }

    %88
    r16. [ \grace {
      \setGrace #18
      c32
    }
    a  ]


%    \break
    \time 3/8

    %89
    \tuplet 6/4 {
    r16. [
    e'16

                  f,32 ] }

    %90
    \tuplet 5/4 {
      c'16. [ a,32 a32 ]
    }


    %\time 2/8
    %91
    r8

\override Beam #'damping = #+inf.0

    %92
    %\break
    \time 3/8
    \once \set tupletFullLength = ##t
    \tuplet 6/4 {
    \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 60"
      "| gearing up"
    }
      r32 [
      \stopTextSpan
      c''16--   f,16.---^  ]
    }

    %\time 3/8


    %93

    r32[
    c-^  a, \grace {
      \setGrace #14
      f,32
    }
    e''  ]

    %94
    r32 [ e''16

    a,32 ]

    %95
    \break
    \time 4/8
    r16 [ \grace {
      \setGrace #34
      e''32
    }
    f, \grace {
      \setGrace #36
      g''
    }
    c ]


  %  \break
    %$\time 3/8

    %96
    \once \set tupletFullLength = ##t
    \tuplet 7/4 {
      c32 [
              \once \override TextSpanner.bound-details.left.text = "accel. "
  \once \override TextSpanner.extra-offset = #'(0 . 3.75)
    \once \override TextSpanner.bound-details.right.padding = #'-2
      e''16.-^
      \startTextSpan
      e''32 a,16 ]
    }

    %97
    \once \set tupletFullLength = ##t
    \tuplet 7/4 {
      f,8--  [ r32
      e''16 ]
    }

    %98
    \grace {
      \setGrace #34
      e''32
    }
    \tuplet 7/4 {
      a,32 [ c''16-- g''32 f, a, c'' ]
    }

   % \break
    %\time 4/8


    %99
    %\break
    r16 [ \stopTextSpan
    \once \override Score.MetronomeMark.extra-offset = #'(0 . 5.5)
     \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 80"
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
    \tuplet 6/4 {

      r16 [


                  e''8 ]  }

    %\break
    %\time 4/8
    %103
    \once \set tupletFullLength = ##t
    \tuplet 5/4 {
      r32 [
 \once \override TextSpanner.bound-details.left.text = "molto accel. "
 \once \override TextSpanner.extra-offset = #'(0 . 3)
 \once \override TextSpanner.bound-details.right.padding = #'-5
    a,32

      \startTextSpan
      e''16. ]
    }

    %104
    r16 [ e''32-- c ]

    %\break
    %\time 2/8
    %105
    \once \set tupletFullLength = ##t
    \tuplet 7/4 {
      r8 [ r32
      e''16-^ ]
     }


    %106
    g''32 [ f,16. ] \stopTextSpan

%\break
    \break
    \time 3/8
    %107
        \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 120"
      "| unrestrained, but exact"
    }

    \once \set tupletFullLength = ##t
    \tuplet 6/4 { r32 [
                  c''16
      g''32  \grace {
        \setGrace #34
        e''
      }
      e'
      \grace {
        \once \override Stem.details.beamed-lengths = #'(16)
        \once \stemDown
       a,
       \once \override Stem.details.beamed-lengths = #'(18)
       \once \stemDown
       c''
      }
      a ]
    }

    %108
    \grace {
      \setGrace #36
      g''32
    }\tuplet 6/4 {
      f,32--  [

      \grace {
        \setGrace #27
        e'
      }
      c''  \grace {
        \once \override Stem.details.beamed-lengths = #'(14)
        \once \stemDown
        a,
        \once \override Stem.details.beamed-lengths = #'(14)
        \once \stemDown
        c' }
      e''--

    \grace {
      \setGrace #14
      f,32
    }

      e''-^    e''
      c'' ]
    }


   \break
   \grace  {
      \once \override Stem.details.beamed-lengths = #'(20)
        \once \stemDown
      c'32
      \once \override Stem.details.beamed-lengths = #'(20)
        \once \stemDown
      g''
    }
    %109
    \tuplet 6/4 {
      r32  [ c''
      a
    \grace {
      \once \override Stem.details.beamed-lengths = #'(18)
        \once \stemDown
      a,32
     \once \override Stem.details.beamed-lengths = #'(18)
        \once \stemDown
      c''
    }
      e'16--
      g''32 ]
    }

    %\break

    \grace  {
       \once \override Stem.details.beamed-lengths = #'(19)
        \once \stemDown
        a
       \once \override Stem.details.beamed-lengths = #'(19)
        \once \stemDown
        e''
      }

    %110
    \once \set tupletFullLength = ##t
    \tuplet 7/4 {
      r32 [  \grace {
        \setGrace #32
        c''32
      }
      e'32   \grace {
        \setGrace #14
        f,
      }
      e''--  g''-^  \grace {
        \once \override Stem.details.beamed-lengths = #'(18)
        \once \stemDown
        c
        \once \override Stem.details.beamed-lengths = #'(18)
        \once \stemDown
        c''
      } a  e'16 ]
    }



    %\time 2/8
    %111
    \tuplet 7/4 {
      g''32 [ c'' g''16 \grace {
        \setGrace #14
        f,32
      }
      c''  a,
      g''-- ]
    }

    %112
    \grace {
      \setGrace #34
      e''32
    }
    \tuplet 6/4 {
      c' [ \grace {
        \setGrace #32
        c''
      }
      a
      e''
    \grace {
      \setGrace #34
      e''
    }
    \once \set tupletFullLength = ##t

      a,  \grace {
        \setGrace #34
        e''
      }
      c'16 ]
    }
\break
\time 2/8
    %113
    \grace {
      \setGrace #16
      a,32
    }
    \tuplet 6/4 {
      e'16 [ \grace {
        \setGrace #23
        a32
      }
      g''32-^

      e''32 \grace {
        \setGrace #34
        e''
      }
      a
      e'-- ]
    }

    %114
    \grace {
      \once \override Stem.details.beamed-lengths = #'(11)
        \once \stemDown
      e''32
     \once \override Stem.details.beamed-lengths = #'(11)
        \once \stemDown
      a,32
    }
    \once \set tupletFullLength = ##t
    \tuplet 5/4 {
      e''32 a, c''16.-^ ]
     }

  %  \break
    \time 3/8
    %115

     \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 40" \italic "subito"
      "| inevitable"
     }
    r16 [
    a,32-^
    32 ]


    %116
    f,16 [ c32
    f,-- ]

    %117
    r16. [
    \once \override TextSpanner.bound-details.left.text = "molto rit. "
    \once \override TextSpanner.bound-details.left.padding = #-5
    \once \override TextSpanner.bound-details.right.padding = #-10
    \once \override TextSpanner.extra-offset = #'(0 . 3)
    a,32 \startTextSpan ]

    \time 3/8
    %118
    a,16. [
    32 ]

    %119
    a,16-^ [
    a,16 ]

    %120
    r32 [ c32 f,16 \stopTextSpan ]

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
