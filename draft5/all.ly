\version "2.19.83"
\language "english"

{
  \stemDown
  % \override Stem.details.beamed-lengths = #'(12 12 12)
  \stopStaff
  \override Staff.StaffSymbol.line-positions = #'(-11 -9 -7 -2 0 2 7 9 11)
  \startStaff
  \clef percussion
  \time 1/4
  % \repeat unfold 8 { s1 \break }

  f,16 f, f, f,
  r8. f,16
  r8 f,16 f,
  f,8. f,16
  f,8. f,16
  r16 f,16 f,8
  r16 f,16 f, f,
  f,16 f, f, \grace a \afterGrace f,16 { a }

  \break

  \tuplet 7/4 {
    r16 r16 a8. f,16 a16
  }
  r8 \grace a16 f, \grace f, a
  \tuplet 7/4 {
    \grace f,16 a8 a16 a a f, a
  }
  \tuplet 5/4 {
    \grace f,16 a16 a8. \grace f,16 a16
  }
  r16 \grace a f, \grace f, a a

  \break

  r16 \grace f, a \grace f, a a
  r16 f,8 f,16
  \tuplet 7/4 {
    f,16 a8. a8.
  }
  r16 \grace a16 f,8.
  \tuplet 5/4 {
    f,16 \grace a f,8. a16
  }
  \tuplet 5/4 {
    a8 a8.
  }

  \break

  \tuplet 5/4 {
    r16 a4
  }
  \grace f,16 a8. f,16
  r16 a8.
  f,8. \grace a16 \afterGrace f,16 { a16 }
  \tuplet 5/4 {
    f,16 f, a8.
  }
  \tuplet 5/4 {
    a16 f,8 a8
  }
  \grace f,16 a \grace f, a \grace a f, a

  \break

  a16 \grace f, a \grace f, a a
  \tuplet 3/2 { r8 a16 } \tuplet 3/2 { f,8 a16 }
  f,16 \grace a f,16 a8
  \grace f,16 a \grace f, a a8
  r4
  r8 a16 a

  \break

  r16 a8.
  a8. a16
  r16 a16 a a
  a8. a16
  a16 a a8
  r16 a8 a16
  r16 a16 a8
  r16 a16 a \grace a c''

  \break

  \tuplet 7/4 {
    r4 r8 a16
  }
  \tuplet 3/2 {
    r4 a8
  }
  \tuplet 7/4 {
    \grace c''16 a8. a8 a8
  }
  r8 \tuplet 3/2 { \grace a16 c'' a a }
  \tuplet 7/4 {
    r8 c''16 a8 a16 a
  }

  \break

  \tuplet 3/2 { c''8 a16 } \tuplet 3/2 { c''16 a8 }
  r8 \tuplet 3/2 { c''8 a16 }
  c''16 c'' \grace c'' a \grace c'' a
  r16 a16 a8
  c''16 a c'' c''
  \tuplet 7/4 {
    c''16 a a8. c''8
  }

  \break

  \tuplet 5/4 {
    r16 c''16 a \grace a a \afterGrace a { a }
  }
  \tuplet 7/4 {
    a16 a \grace c'' a8. \grace a16 \afterGrace c''8 { a16 }
  }
  a [ c'' \grace { a c'' } a \grace c'' \afterGrace a ] { a }

  \break

  \tuplet 7/4 {
    r8 c''8 a16 a a
  }
  c''16 [ \grace a c'' c'' \grace { a c'' } a ]

  \tuplet 7/4 {
    \grace c''16 a8 a8. \grace a16 c''16 a
  }
  r16 c''8.

  \break

  r8 c''8
  c''8. c''16
  c''16 c''8 c''16
  r8 c''16 c''
  c'' c'' c''8
  r16 c''8.

  \break

  a16 a a a
  a a a8
  r16 a8 a16
  a8 a16 a
  r16 a8.
  r8 a16 a16
  r4
  a16 a8 a16
  r16 a8.

  \break

  a16 a8.
  \tuplet 5/4 {
    r8 a16 a8
  }
  \tuplet 7/4 {
    r16 a8 r4
  }
  \tuplet 7/4 {
    r8 a8 r8.
  }
  \tuplet 7/4 {
    r4 a8.
  }
  r4
  \break

  r8 c''8
  \tuplet 5/4 {
    c''8 \afterGrace f,8. { a16 }
  }
  \tuplet 7/4 {
    r16 f,4 a8
  }
  a16 a8 a16
  \tuplet 7/4 {
    r4 f,8.
  }
  a8. a16

  \break

  \tuplet 7/4 {
    a4 r8 f,16
  }
  \tuplet 5/4 {
    r8 f,16 f,8
  }
  r8. \grace f,16 a16
  r8 \tuplet 3/2 { a8 f,16 }
  \tuplet 5/4 {
    a8. f,16 a16
  }
  r4

  \break

  \tuplet 3/2 { r16 c''8 } f,8
  r16 f, f, \grace f, c''
  r16 c''8 f,16
  r8 \grace c''16 f, \grace c'' f,
  \tuplet 7/4 {
    f,16 c''8. c''16 f,8
  }

  \break

  \tuplet 7/4 {
    f,4 r16 \afterGrace c''8 { c''16 }
  }
  \tuplet 7/4 {
    f,16 c''8 c''16 f, f, c''
  }
  r8 \grace f,16 c'' f,
  r4
  r4

  \break

  \tuplet 3/2 {
    r8 c''4
  }
  \tuplet 5/4 {
    r16 f,16 c''8.
  }
  r8 c''16 f,16
  \tuplet 7/4 {
    r4 r16 c''8
  }
  c''16 f,8.

  \break

  \tuplet 3/2 { r16 c''8 } \tuplet 3/2 { c''16 [ \grace c'' a \grace {f, c''} \afterGrace a ] { c''} }
  \tuplet 3/2 { f, [ \grace a c'' \grace { f, a } c'' ] } \tuplet 3/2 { \grace f, c'' c'' \afterGrace c'' { a c'' } }
  \tuplet 3/2 { r16 c'' \grace c'' a } \tuplet 3/2 { \grace { f, c'' } a8 \afterGrace c''16 { a c'' } }

  \break

  \tuplet 7/4 {
    r16 [ \grace c'' a \grace f, c'' c'' \grace { f, c'' } a a8 ]
  }
  \tuplet 7/4 {
    c''16 c'' c''8 \grace f,16 c''16 f, c''
  }
  \tuplet 3/2 { \grace c''16 a \grace c'' a c'' } \tuplet 3/2 { \grace c'' f,16 \grace c'' a8 }

  \break

  \tuplet 3/2 { \grace f,16 a8 \grace f,16 c''16 } \tuplet 3/2 { c''16 \grace c'' a \afterGrace a { c'' } }

  \tuplet 5/4 {
    \grace f, c''16 f, c''8.
  }
  r8 f,16 f,
  f,8 f,16 f,
  r8. f,16

  \break

  f,8. f,16
  f,8 f,8
  r16 f,16 f,8

  \bar "|."

}

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
