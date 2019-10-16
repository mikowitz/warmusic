\version "2.19.83"
\language "english"

#(set-global-staff-size 25)

\paper {
  ragged-last-bottom = ##t
  line-width = 7.5\in
  left-margin = 0.5\in
  bottom-margin = 1.25\in
  top-margin = 1.25\in
  tagline =##f
  indent = 0
  system-system-spacing.minimum-distance = #30
}

{
  \override Score.BarNumber.break-visibility = ##(#f #f #t)
  % \stemDown
  % \stemUp
  % \override Beam.damping = #20
  % \override Stem.details.beamed-lengths = #'(12 12 12)
  \stopStaff
  \override Staff.StaffSymbol.line-positions = #'(-11 -9 -7 -2 0 2 7 9 11)
  \startStaff
  \clef percussion
  \time 1/4

  %1
  f,16->-- a, a, a,
  %2
  r8. c16
  %3
  r8 a,16 a,
  %4
  a,8. a,16--
  %5
  f,8. c16

  \break


  %6
  r16 f, a,8
  %7
  r16 c16-> c c
  %8
  c-- f, a, \grace a16 ( \afterGrace f,16 ) _( { c'16 ) }
  % \stemDown
  % c f, a, \grace a \afterGrace f, ( { c'16 ) }


  %9
  % \stemUp
  \tuplet 7/4 {
    r8 c'8.->-- c16 c'
  }
  % 10
  r8 \grace e'16 ( a, ) \grace f, ^( c' )

  \break

  %11
  \tuplet 7/4 {
    \grace a,16 ( c'8 ) c'16 c'16 a f, e'->
  }

  % 12
  \tuplet 5/4 {
    \grace c16 ( a16 ) c'8.-- \grace c16 ( c'16 )
  }


  %13
  r16 \grace c' ( a, ) \grace f, ( c' ) c'
  %14

  r16 \grace a, ( e'-> ) \grace f, ( a-> ) e'

  % 15
  r16 a,8-- f,16

  \break
  % 16
  \tuplet 7/4 {
    c16 c'8. a8.
  }


  % 17
  r16 \grace e'16 ( a,8. )
  % 18
  \tuplet 5/4 {
    a,16 \grace a ( f,8. ) e'16--
  }
  % 19
  \tuplet 5/4 {
    c'8 8.
  }
  % 20
  \tuplet 5/4 {
    r16 a4
  }

  \break
  % 21
  \grace a,16 ( e'8.-> ) f,16
  % 22
  r16 a8.
  % 23
  a,8. \grace e'16 ( f,16-- )

  % 24
  \grace a16 ( \tuplet 5/4 {
    a,16 ) f,16 e'8.
  }

  % 25
  \tuplet 5/4 {
    c'16 c8 a8
  }
  \break


  %26
  \grace a,16 ( c'-- ) \grace c ( e' ) \grace a ( c ) e'

  %27
  a16 \grace c ( e'-> ) \grace f, ( a-> ) e'

  % 28
  \tuplet 3/2 { r8 c'16 } \tuplet 3/2 { c8 a16 }

  %29
  c16 \grace c' ( c ) c'8--


  %30
  \grace c16 ( c' ) \grace a, ( e'-> ) c'8
  \break

  %31
  r4
  %32
  r8 c'16 c'
  %33
  r16 c'8.
  %34
  a8. e'16
  %35
  r16 a16-- c' c'->

  \break

  %36
  c'8. c'16
  %37
  c'16 e' a8
  %38
  r16 e'8 c'16--
  %39
  r16 a16 e'8
  %40
  r16 a e' \grace c' ( c''->-- )

  \break

  %41
  \tuplet 7/4 {
    r4. c'16
  }

  %42
  \tuplet 3/2 {
    r4 a8
  }
  %43
  \grace e'' ( \tuplet 7/4 {
    e'8. ) a8 e'8--
  }
  %44
  r8 \grace a16 ( \tuplet 3/2 { e''16 ) e'-> c' }
  %45
  \tuplet 7/4 {
    r8 e''16 a8 c'16 e'
  }

  \break

  %46
  \tuplet 3/2 { g''8 a16 } \tuplet 3/2 { e''16 e'8 }

  %47
  r8 \tuplet 3/2 { e''8 a16 }

  %48
  e''16-- e'' \grace c'' ( e'-- ) \grace g'' ( a-> )

  %49
  r16 e' c'8

  %50
  c''16 a e'' e''

  \break

  %51
  \tuplet 7/4 {
    e''16 c' c'8. e''8--
  }

  %52
  \tuplet 5/4 {
    r16 e'' c' \grace e' ( c' ) c'--
  }

  %53
  \tuplet 7/4 {
    \grace c'16 ( c' ) a \grace g'' ( e'8. ) \grace a16 ( c''8-> )
  }

  %54
  \grace c' ( c16 [ ) g'' \grace { c' ( e'' } c' ) \grace c'' ( \afterGrace c' ) ] ( { e' ) }

  %55
  \tuplet 7/4 {
    r8 g''-> a16 e' c'->--
  }

  \break

  %56
  c'' [ \grace a ( g''-- ) e'' \grace { c' ( e'' } a ) ]

  %57
  \grace c''16 ( \tuplet 7/4 {
    e'8 ) c'8. \grace c'16 ( g''-> ) a16
  }

  %58
  r16 c''8.
  %59
  r8 g''8
  %60
  c''8. g''16--

  \break

  %61
  e''16 c''8 e''16
  %62
  r8 g''16 c''16
  %63
  g''-- c'' g''8
  %64
  r16 c''8.->
  %65
  e'16 a e' a

  \break

  %66
  e'16-- c' a8
  %67
  r16 c'8-> e'16
  %68
  a8 e'16 a16
  %69
  r16 e'8.
  %70
  r8 a16-- e'16

  \break

  %71
  r4
  %72
  c'16 a8 c'16
  %73
  r16 c'8.->
  %74
  c'16 e'8.
  %75
  \tuplet 5/4 {
    r8 c'8 c'16--
  }

  \break

  %76
  \tuplet 7/4 {
    r16 c'4 r8
  }
  %77
  \tuplet 7/4 {
    r8 c'4-> r16
  }
  %78
  \tuplet 7/4 {
    r4 a8.->
  }
  %79
  r4
  %80
  r8 g''8

  \break

  %81
  \tuplet 5/4 {
    e''8 \afterGrace f,8.-- ( { e'16 )}
  }
  %82
  \tuplet 7/4 {
    r16 a,4 a8
  }
  %83
  c'16 8 16
  %84
  \tuplet 7/4 {
    r4 c8.
  }
  %85
  c'8.-> 16--

  \break

  %86
  \tuplet 7/4 {
    e'4 r8 c16
  }
  %87
  \tuplet 5/4 {
    r8 c16 c8
  }
  %88
  r8. \grace c16 ( a )
  %89
  r8 \tuplet 3/2 { e'8 f,16 }
  %90
  \tuplet 5/4 {
    c'8. a,16 a16
  }

  \break

  %91
  r4
  %92
  \tuplet 3/2 { r16 c''8-- } f,8->--
  %93
  r16 c-> a, \grace f,16 ( e'' )
  %94
  r16 e''8 a,16
  %95
  r8 \grace e''16 ( f, ) \grace g'' ( c )

  \break

  %96
  \tuplet 7/4 {
    c16 e''8.-> e''16 a,8
  }
  %97
  \tuplet 7/4 {
    f,4-- r16 e''8
  }
  %98
  \grace e''16 ( \tuplet 7/4 {
    a,16 ) c''8-- g''16 f, a, c''
  }
  %99
  r8 \grace f,16 ( e''-> ) c
  %100
  r4

  \break
  %101
  r4
  %102
  \tuplet 3/2 { r8 e''4 }
  %103
  \tuplet 5/4 {
    r16 a,16 e''8.
  }
  %104
  r8 e''16-- c
  %105
  \tuplet 7/4 {
    r4 r16 e''8->
  }

  \break

  %106
  g''16 f,8.
  %107
  \tuplet 3/2 { r16 c''8 }
  \tuplet 3/2 {
    g''16 [ \grace e'' ( e' ) \grace { a, ( c'' } a ) ]
  }
  %108
  \grace g''16 ( \tuplet 3/2 {
    f,16-- ) [ \grace e' ( c'' ) \grace { a, ( c' } e''-- ) ]
  }
  \grace f,16 ( \tuplet 3/2 {
    e''-> [ ) e'' \afterGrace c'' ] { c'16 g'' }
  }
  \break
  %109
  \tuplet 3/2 {
    r16 c'' a
  }
  \grace { a,16 ( c'' }
  \tuplet 3/2 {
    e'8-- ) \afterGrace g''16 ( { a e'' ) }
  }
  %110
  \tuplet 7/4 {
    r16 \grace c''16 ( e'16 ) \grace f, ( e''-- ) g''-> \grace { c ( c'' } a ) e'8
  }

  \break

  %111
  \tuplet 7/4 {
    g''16 c'' g''8 \grace f,16 ( c'' ) a, g''--
  }
  %112
  \grace e''16 ( \tuplet 3/2 {
    c' ) \grace c'' ( a ) e''
  }
  \grace e'' ( \tuplet 3/2 {
    a, ) \grace e'' ( c'8 )
  }
  \break
  %113
  \grace a,16 ( \tuplet 3/2 {
    e'8 ) \grace a16 ( g''16-> )
  }
  \tuplet 3/2 {
    e''16 \grace e'' ( a ) e'--
  }
  %114
  \grace { e''16 ^( a,16 } \tuplet 5/4 {
    e''16 ) a, c''8.->
  }
  %115
  r8 a,16-> 16

  \break

  %116
  f,8 c16 f,--
  %117
  r8. a,16
  %118
  a,8. 16
  %119
  a,8-> a,8
  %1120
  r16 c16 f,8

  \bar "|."
}

