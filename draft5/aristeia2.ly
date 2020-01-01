\version "2.19.83"
\language "english"

\include "aristeia-dyn.ly"

#(set-global-staff-size 17)
#(set! paper-alist (cons '("my size" . (cons (* 12 in) (* 9 in))) paper-alist))
\paper {
  #(set-paper-size "my size")
  system-separator-markup = \slashSeparator
%  annotate-spacing = ##t
  ragged-last-bottom = ##t
  % line-width = 7.5\in
  left-margin = 0.75\in
  right-margin = 0.75\in
  bottom-margin = .5\in
  top-margin = .75\in
  tagline =##f
  indent = 0
  ragged-right = ##f
  system-system-spacing.minimum-distance = #45
  score-markup-spacing.minimum-distance = #20
  last-bottom-spacing.minimum-distance = #30
  print-page-number = ##t
      print-first-page-number = ##t
      oddHeaderMarkup = \markup \fill-line { " " }
      evenHeaderMarkup = \markup \fill-line { " " }
      oddFooterMarkup = \markup { \fill-line {
         \circle
         \pad-around #1.5
         \bold \fontsize #4 \on-the-fly #print-page-number-check-first
         \fromproperty #'page:page-number-string } }
      evenFooterMarkup = \markup { \fill-line {
        \circle
        \pad-around #1.5
         \bold \fontsize #4 \on-the-fly #print-page-number-check-first
         \fromproperty #'page:page-number-string } }
}

setGrace = #(define-music-function (parser location stemLen) (number?)
               #{
                 \once \stemDown
                 \once \override Stem.length = #stemLen
               #})

setDynOffset = #(define-music-function (parser location yOffset) (pair?)
                  #{
                    \override DynamicText.extra-offset = #yOffset
                    \override Hairpin.extra-offset = #yOffset
                  #})

\score {
  \new PianoStaff <<
    \new Staff {
    \override Staff.Stem.stemlet-length = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #t)
    % \stemDown
  \stemUp



    \stopStaff
    \override Staff.StaffSymbol.line-positions = #'(-11 -9 -7 -2 0 2 7 9 11)
    \override TupletNumber.font-size = #1.5
    \override TupletNumber.extra-offset = #'(0 . 0.5)
    \override TupletBracket.extra-offset = #'(0 . .5)
    \override TupletNumber.text = #tuplet-number::calc-denominator-text
    \override TupletBracket.bracket-visibility = ##t
     \set tupletFullLength = ##t
     %\override Staff.TimeSignature.style = #'single-digit

    \startStaff
      \override Beam #'damping = #+inf.0
  \override TupletBracket #'damping = #+inf.0

  \override DynamicText.extra-offset = #'(0 . -1)
  \override Hairpin.extra-offset = #'(0 . -1)


    \clef percussion
      \override Staff.TimeSignature.font-size = #6
      \override Staff.TimeSignature.font-family = #'typewriter
%      \override Staff.TimeSignature.font-family = #'typewriter
    \time 3/8
  \set strictBeatBeaming = ##t
    %1
    \override Rest.font-size = #2.5
    \override Score.MetronomeMark.extra-offset = #'(0 . 2)
    \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 40"
      "| deliberate, preparatory"
    }

    \override Stem.details.beamed-lengths = #'(13)
    f,32
      ^\tweak X-offset #1.5
      ^^
      _.
      [
      \ff \>
    %f,32--->  [
    a,-. a,-.
    a,-. \p

      \override Stem.details.beamed-lengths = #'(12)

    %2
    \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r16.

%    \once \override Stem.length = #26

   \setDynOffset #'(0 . -3.5)
    c32-.  \pp

    %3
    \override Stem.details.beamed-lengths = #'(13)
        \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r16  a,32 \mp\> a,

   % \time 3/8

    %4
    a,16.

    a,32--

    %5
\override Stem.details.beamed-lengths = #'(12)
    f,16.

    c32


    %6
\override Stem.details.beamed-lengths = #'(13)
    r32  f, a,16 \p ]

    \time 2/8

    %7
    \override Stem.details.beamed-lengths = #'(12)
    r32 [
    \once \override TextSpanner.extra-offset = #'(0 . 3)
    \once \override TextSpanner.bound-details.left.text = "poco accel."
    \once \override TextSpanner.bound-details.right.padding = #5
%    \once \override DynamicText.extra-offset = #'(0 . 3)
\setDynOffset #'(0 . -2)
    c32-^  \startTextSpan \ff \>
    c

    c

    %8
    \override Stem.details.beamed-lengths = #'(13)
    c  f, a,


%    \once \override DynamicText.extra-offset = #'(0 . 2)
    <f, a>32




    %\time 2/8



    %9
    \override Stem.details.beamed-lengths = #'(8.5)
     \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 60"
     }
    \tuplet 7/4 {

    c'16\pp
    \stopTextSpan c'16.-^ \ff \>

      \set stemLeftBeamCount = 2
      \set stemRightBeamCount = 3
      c32

      c'
    }

    % 10
          \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r16
    <a, e'>32

    <f, c'>32 \pp

    \break

\time 4/8
    %11

    \tuplet 7/4 {

      < a, c'>16  c'32 c'32 a f,

      e'-^  \ff \>
    }

    % 12

    \tuplet 5/4 {

      <c a>32   c'16.--

      <c c'>32   \mp
    }

    %\time 2/8

    %13
    r32
    <a, c'>32 \<
    <f, c'>

    c' ]

    %14
\override Stem.details.beamed-lengths = #'(8)
    r32 [
    \once \override TextSpanner.bound-details.left.text = "rit."
\once \override TextSpanner.extra-offset = #'(0 . 3.5)
    \once \override TextSpanner.bound-details.left.padding = #-5

    \once \override TextSpanner.bound-details.right.padding = #-2
    <a, e'> \ff
    -^ \startTextSpan
    \setDynOffset #'(0 . -7)
    <f, a>-^
    e' \stopTextSpan ] \mf


    \time 3/8

    % 15
    \override Stem.details.beamed-lengths = #'(13)
        \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 40"
      "| but now restless"
    }
    %\tempo 8 = 15
    r32 [ c16-- \>

    a,32

    % 16
    \override Stem.details.beamed-lengths = #'(9)
    \tuplet 7/4 {

      c32  c'16.

      a16.  \p
    }

    % 17
\override Stem.details.beamed-lengths = #'(13)
    r32
    \setDynOffset #'(0 . -4)
    <a, e'>16. \pp

    %\time 3/8


    % 18
    \tuplet 5/4 {
      \setDynOffset #'(0 . -3)
      c32  \<


      <a, a>16.

      e'32--
    }

    % 19

\override Stem.details.beamed-lengths = #'(8)
%    \set tupletFullLengthNote = ##t
    \tuplet 5/4 {

      c'16

      c'16. ] \mp
    }

    % 20
    \override Stem.details.beamed-lengths = #'(9.5)
    \setDynOffset #'(0 . -8)
    \tuplet 5/4 {
      r32 [ a8 \pp
    }

\break
    \time 3/8

    % 21
    \override Stem.details.beamed-lengths = #'(10)

   \setDynOffset #'(0 . -4)
    <a, e'>16.-^   \ff
    \setDynOffset #'(0 . -7)
    c32  \mp

    \setDynOffset #'(0 . -2)
    % 22
\override Stem.details.beamed-lengths = #'(9.5)
    r32

    a16. \mf\>

    % 23
\override Stem.details.beamed-lengths = #'(13)
    a,16.

    <c e'>32--

    \time 4/8

    % 24
    \override Stem.details.beamed-lengths = #'(11)
    \grace {
      \setGrace #20

      %\once \override Stem.length = #23
      a32
    }

    \tuplet 5/4 {
      a,32
      c32

      e'16.
    }

    % 25
    \override Stem.details.beamed-lengths = #'(9)
    \tuplet 5/4 {

      c'32 [c16 a16 ] \p
    }


    %\time 2/8

    %26
    \override Stem.details.beamed-lengths = #'(7.5)
    \grace {
      \setGrace #13
      c'32
    }
    a,--  [ \<
    \grace {
      \setGrace #15
      e'
    }
    c
    \grace {
      \setGrace #20
      a
    }
    c
    e' ]

    %27

    a32 [

    < c e'>-^  \ff

    \once \override TextSpanner.extra-offset = #'(0 . 2.5)
    \once \override TextSpanner.bound-details.left.text = "molto accel. "
    \once \override TextSpanner.bound-details.right.padding = -1
    <f, a>-^  \startTextSpan e' ]

    \time 3/8

    % 28
    \override Stem.details.beamed-lengths = #'(9.5)
    \tuplet 6/4 {
                \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
      r16 [
      c'32 \pp \<

      c16

      a32 ]
    }

    %29
    \override Stem.details.beamed-lengths = #'(11)
    c32  [
    <c c'>

    c'16-- ]

    %30
    \override Stem.details.beamed-lengths = #'(8)


    <a, c'>32  [
    <f, e'>-^   \ff
    \once \override Score.MetronomeMark.extra-offset = #'(4 . 5)
    \tempo \markup {
      "(" \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 120)"
    }
    c'16:128 \stopTextSpan ] \sp

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

   % \break
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

    %\time 4/8

%\break
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

    %\break
   % \break
    %\time 3/8

    %73
    \override Stem.details.beamed-lengths = #'(10)
     \once \override Score.MetronomeMark.extra-offset = #'(0 . 2.5)
     \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 40"
      "| mournful"
     }
    r32 [ a16.-^ ] \ff \>

    %74
    \override Stem.details.beamed-lengths = #'(5)
    e''32 [
    c''16. ]

    %75
    \override Stem.details.beamed-lengths = #'(6)
    \tuplet 5/4 {
                \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
      r16 [ c'16 e''32-- ] \p
    }

    \break
    %\time 3/8

    %76
    \override Stem.details.beamed-lengths = #'(9)
    \tuplet 7/4 {
      r32 [ e'16 \p
                \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
      r8 ]
    }

    %77
    \tuplet 7/4 {
                \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
      r16 [ c'16-^ \ff
                \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
      r16. ]
    }

    %78
    \override Stem.details.beamed-lengths = #'(10)
    \tuplet 7/4 {
                \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
      r8 [

      a16.:128-^ ]
     }

    \time 1/8

    %79
              \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r8
        ^\tweak font-size #3
    ^\tweak Y-offset #6.5
    ^\fermata
%\break
    \time 3/8

    %80
    \override Stem.details.beamed-lengths = #'(4)
              \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r16 [ c''16 ] \mp



  %  \time 2/8
    %81
    \override Stem.details.beamed-lengths = #'(5)
    \tuplet 5/4 {
      e''16 [
      f,16.-- ] \p
    }

    %82
    \override Stem.details.beamed-lengths = #'(10)

    \tuplet 7/4 {
     e'32 [  a,16
               \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r16  a16\< ]
    }


    %\break
    \time 2/8

    %83
    \override Stem.details.beamed-lengths = #'(9)
    c'32 [ 16 32 ] \mf

    %84
    \override Stem.details.beamed-lengths = #'(12.5)
    \tuplet 7/4 {
                \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
      r8 [ c16. ] \f
    }

\break
    \time 4/8

    %85
    \override Stem.details.beamed-lengths = #'(9)
    \once \override TextSpanner.bound-details.left.text = "accel. "
    \once \override TextSpanner.bound-details.right.padding = #6.5
    \once \override TextSpanner.extra-offset = #'(0 . 2)
    c'16.-^  [  \startTextSpan \ff \>

    32-- ]


    %86
    \override Stem.details.beamed-lengths = #'(11)
    \tuplet 7/4 {
       e'8 \mp [
                 \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
       r16 c32 ]
    }



    %\time 2/8
    %87
    \override Stem.details.beamed-lengths = #'(12.5)
    \tuplet 5/4 {
                \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
      r16 [
      c32 \p
      c16 ]
    }

    %88
    \override Stem.details.beamed-lengths = #'(10)
              \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r16. [
    <c a>32  ]


%    \break
    \time 3/8

    %89
    \override Stem.details.beamed-lengths = #'(13)
    \tuplet 6/4 {
              \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r16. [
    e'16 \<

                  f,32 ] }

    %90
    \override Stem.details.beamed-lengths = #'(10)
    \tuplet 5/4 {
      c'16. [
      \set stemLeftBeamCount = 2
      \set stemRightBeamCount = 3
      a,32 a32 ] \mf
    }


    %\time 2/8
    %91
              \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r8

\override Beam #'damping = #+inf.0

    %92
    \time 3/8
    \tuplet 6/4 {
    \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 60"
      "| gearing up"

    }
        \override Stem.details.beamed-lengths = #'(5.5)
      r32 [
      \stopTextSpan
      \setDynOffset #'(0 . -5)
      c''16--  \mp
      \setDynOffset #'(0 . -3)
      f,16.-^  ] \ff
    }

    %\time 3/8


    %93
    \override Stem.details.beamed-lengths = #'(10.5)
    r32[
    c-^  a, \>

    \grace {
      \setGrace #11
      f,32
    }
    e''  ]

    %94
        \override Stem.details.beamed-lengths = #'(5)
    r32 [  e''16 \mp

    a,32 ]

    %95
        \override Stem.details.beamed-lengths = #'(14)
    \break
    \time 4/8
              \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r16 [ \grace {
      \setGrace #31
      e''32
    }
    f,  \<
    \grace {
      \setGrace #33
      g''
    }
    c ]


  %  \break
    %$\time 3/8

    %96
        \override Stem.details.beamed-lengths = #'(6)
    \tuplet 7/4 {
      c32 [
              \once \override TextSpanner.bound-details.left.text = "accel. "
  \once \override TextSpanner.extra-offset = #'(0 . 3.75)
    \once \override TextSpanner.bound-details.right.padding = #'-2
      e''16.-^ \ff \>
      \startTextSpan
      e''32 a,16 ]
    }

    %97
    \tuplet 7/4 {
      f,8--  [ \p \!
      r32
      e''16 ] \<
    }

    %98
        \override Stem.details.beamed-lengths = #'(7)
    \grace {
      \setGrace #31
      e''32
    }
    \tuplet 7/4 {
      a,32 [ c''16-- g''32 f, a, c'' ] \mf
    }

   % \break
    %\time 4/8


    %99
        \override Stem.details.beamed-lengths = #'(6)
    %\break
              \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r16 [ \stopTextSpan
    \once \override Score.MetronomeMark.extra-offset = #'(0 . 5.5)
     \tempo \markup {
      \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 80"
      "| prepared"
     }
    \grace {
      \setGrace #11
%      \once \override Stem.length = #'20
      f,32
    }
    \setDynOffset #'(0 . -5)
    e''-^  \ff c ]

    %100
              \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r8

    %101
              \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r8

    %102
    \tuplet 6/4 {

                \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
      r16 [

  \set stemLeftBeamCount = 3
  \set stemRightBeamCount = 2
  \setDynOffset #'(0 . -3)
                  e''32\mp
                            \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
                  r16. ]
    }

    %\break
    %\time 4/8
    %103
        \override Stem.details.beamed-lengths = #'(5.5)
    \tuplet 5/4 {
      r32 [
 \once \override TextSpanner.bound-details.left.text = "molto accel. "
 \once \override TextSpanner.extra-offset = #'(0 . 3)
 \once \override TextSpanner.bound-details.right.padding = #'-5
    a,32 \p

      \startTextSpan
      e''16. ]
    }

    %104
              \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
    r16 [ e''32-- \mf c ]

    %\break
    %\time 2/8
    %105
    \tuplet 7/4 {
                \once \override Dots.font-size = 2
    \tweak Y-offset #1.5
      r8 [ r32
      e''16-^ ] \ff
     }


    %106
        \override Stem.details.beamed-lengths = #'(5)
    g''32 \mp [
    \once \override Score.MetronomeMark.extra-offset = #'(7.5 . 0.5)
     %\tempo \markup {
    %  "(" \teeny \general-align #Y #DOWN \note #"16" #1.3 "= 120)"
   %   }
    f,16. ] \stopTextSpan

%\break
    \break
    \time 3/8
    %107
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
  %  \break
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
  %\aristeiaDynamics
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
