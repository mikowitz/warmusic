\version "2.19.83"
\language "english"

{
  \stemUp
\override Stem.details.beamed-lengths = #'(12 12 12)
  \stopStaff
  \override Staff.StaffSymbol.line-positions = #'(-11 -9 -7 -2 0 2 7 9 11)
  \startStaff
  \clef percussion
  \time 4/4
  \repeat unfold 8 { s1 \break }
  % \tuplet 4/3 {
  %   f,8 [ c a, f,
  % }
  % \once \override Rest.extra-offset = #'(0 . -4.5)
  % r8
  % a,8. c16
  % c16 c8.]
  % \tuplet 5/4 {
  %   c16 [ c8. c16 ]
  % }
  % r16 [ c16 f,8. a,16 c16 ]

  % \time 30/16
  % \tuplet 5/4 {
  %   a16 [ c c a,

  % \grace e'16
  %    c  ]
  % }
  % c'8 [ e' ]
  % \tuplet 3/2 {
  %   c16 [ a8
  % }
  % r16
  % \grace c'16 ( c ) c32 a32 \grace c ( e'16 )]
  % \tuplet 6/4 {
  %   a16 e' c'32 c e'16 \grace f,16 ( c'16 ) a ]
  % }
  % r8 [ \grace c16 ( e'8 ) \grace a16 ( a,16 ) f,32 c'32 e'8 ]
  % \tuplet 3/2 {
  %   a,16 [ a a,
  % }
  % c'8 ]

}

\paper {
  ragged-last-bottom = ##t
  line-width = 7.5\in
  left-margin = 0.5\in
  bottom-margin = 0.25\in
  top-margin = 0.25\in
  tagline =##f
  indent = 0
  system-system-spacing.minimum-distance = #20
}
